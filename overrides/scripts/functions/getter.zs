#loader preinit contenttweaker crafttweaker
#priority 1101

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

/**
 * A utility class for parsing item strings.
 */
zenClass ItemString {
    val itemString as string = "";
    val mod as string = "";
    val item as string = "";
    var meta as int = 0;

    /**
     * Creates a new item string.
     * @param input The input string.
     */
    zenConstructor(input as string) {
        itemString = input;
        val parts as string[] = input.toLowerCase().split(":");
        if (parts.length < 2) {
            log.error(`Invalid item string *${input}*.`);
            return;
        }
        mod = parts[0];
        item = parts[1];
        if (parts.length >= 3) {
            if (parts[2] == "*") {
                meta = 32767;
            } else {
                meta = parts[2] as int;
            }
        }
    }

    /**
     * Gets the item without an error if it is not loaded.
     * @return The item.
     */
    function silentItem() as IItemStack {
        return itemUtils.getItem(`${mod}:${item}`, meta);
    }

    /**
     * Checks if the mod of the item is loaded.
     * @return True if the mod is loaded, false otherwise.
     */
    function modLoaded() as bool {
        return loadedMods has mod || mod == "ore";
    }

    /**
     * Gets the items of the mod.
     * @return The items.
     */
    function modItems() as IItemStack[] {
        return loadedMods[mod].items;
    }

    /**
     * Gets the item. If the item is not loaded, it will return null and log an error.
     * @return The item.
     */
    function item() as IItemStack {
        val it as IItemStack = silentItem();
        if (isNull(it)) {
            log.error(`String *${itemString}* could not be parsed as an item. Returning *null*.`);
            return null;
        }
        return it;
    }

    /**
     * Checks if the item is loaded.
     * @return True if the item is loaded, false otherwise.
     */
    function itemLoaded() as bool {
        if (modLoaded()) {
            if (isNull(silentItem())) {
                log.trace(`Item *${item}* is null, but its mod *${mod}* is loaded.`);
                return false;
            }
            return true;
        }
        log.trace(`Mod *${mod}* is not loaded, skipping item *${item}*.`);
        return false;
    }
}

global iStr as function(string)ItemString = function(itemName as string) as ItemString {
    return ItemString(itemName);
};

/**
 * Checks if a mod is loaded.
 * @param modid The modid of the mod.
 * @return True if the mod is loaded, false otherwise.
 */
global modLoaded as function(string)bool = function(modid as string) as bool {
    return loadedMods has modid || modid == "ore";
};

/**
 * Gets an item from the item registry.
 * @param itemName The name of the item.
 * @return The item.
 */
global item as function(string)IItemStack = function(itemName as string) as IItemStack {
    val itemString as ItemString = ItemString(itemName);
    return itemString.item();
};

/**
 * Gets an item from the item registry with a specific meta.
 * @param itemName The name of the item.
 * @param meta The meta of the item.
 * @return The item.
 */
global itemMeta as function(string, int)IItemStack = function(itemName as string, meta as int) as IItemStack {
    val itemString as ItemString = ItemString(itemName);
    return itemString.item().withDamage(meta);
};

/**
 * Gets an item from the item registry with a specific stack size.
 * @param itemName The name of the item.
 * @param size The size of the item.
 * @return The item.
 */
global itemSize as function(string, int)IItemStack = function(itemName as string, size as int) as IItemStack {
    val itemString as ItemString = ItemString(itemName);
    return itemString.item().withAmount(size);
};

/**
 * Gets an oredict entry from the oredict registry.
 * @param oreName The name of the oredict entry.
 * @return The oredict entry.
 */
global ore as function(string)IOreDictEntry = function(oreName as string) as IOreDictEntry {
    return oreDict.get(oreName);
};

/**
 * Gets all items from a mod.
 * @param modid The modid of the mod.
 * @return The items.
 */
global modItems as function(string)IItemStack[] = function(modid as string) as IItemStack[] {
    return loadedMods[modid].items;
};

// These depend on each other, so the order matters

/**
 * Gets the mod of an item.
 * @param itemString The string of the item.
 * @return The mod.
 */
global mod as function(string)string = function(itemString as string) as string {
    val parts as string[] = itemString.split(":");
    if (parts.length < 2) {
        log.error(`Invalid item string *${itemString}*.`);
        return itemString;
    }
    return parts[0];
};

/**
 * Checks if an item is loaded.
 * @param itemName The name of the item.
 * @return True if the item is loaded, false otherwise.
 */
global itemLoaded as function(string)bool = function(itemName as string) as bool {
    val itemString as ItemString = ItemString(itemName);
    return itemString.itemLoaded();
};

/**
 * Gets an ingredient from the ingredient from either an item or an oredict entry.
 * @param ingredientName The name of the ingredient.
 * @return The ingredient.
 */
global ingredient as function(string)IIngredient = function(ingredientName as string) as IIngredient {
    if (mod(ingredientName) == "ore") {
        return ore(ingredientName) as IIngredient;
    }
    return item(ingredientName) as IIngredient;
};

/**
 * Gets a fluid from the fluid registry, but does not log an error if it is not found.
 * @param fluidName The name of the fluid.
 * @return The fluid.
 */
global silentFluid as function(string)ILiquidStack = function(fluidName as string) as ILiquidStack {
    var bucket as IItemStack = item("minecraft:bucket");
    if (fluidName == "water") {
        bucket = item("minecraft:water_bucket");
    }
    if (fluidName == "lava") {
        bucket = item("minecraft:lava_bucket");
    }
    if (fluidName != "lava" & fluidName != "water") {
        bucket = item("forge:bucketfilled").withTag({FluidName: fluidName, Amount: 1000});
    }
    for liquid in bucket.liquids {
        return liquid.definition * 1;
    }
    return null;
};

/**
 * Gets a fluid from the fluid registry. If the fluid is not found, it will return null and log an error.
 * @param fluidName The name of the fluid.
 * @return The fluid.
 */
global fluid as function(string)ILiquidStack = function(fluidName as string) as ILiquidStack {
    val fluid as ILiquidStack = silentFluid(fluidName);
    if (isNull(fluid)) {
        log.error(`Fluid *${fluidName}* not found. Returning *null*.`);
        return null;
    }
    return fluid;
};

/**
 * Checks if a fluid is loaded.
 * @param fluidName The name of the fluid.
 * @return True if the fluid is loaded, false otherwise.
 */
global fluidLoaded as function(string)bool = function(fluidName as string) as bool {
    return !isNull(silentFluid(fluidName));
};

/**
 * Gets a list of items from the item registry.
 * @param itemList The list of item names.
 * @return The list of items containing only items that are loaded.
 */
global itemList as function(string[])IItemStack[] = function(itemList as string[]) as IItemStack[] {
    var itemListArray as IItemStack[] = [];
    for itemName in itemList {
        if (itemLoaded(itemName)) {
            itemListArray += item(itemName);
        }
    }
    return itemListArray;
};

/**
 * Gets a list of oredict entries from the oredict registry.
 * @param oreList The list of oredict entry names.
 * @return The list of oredict entries.
 */
global oreList as function(string[])IOreDictEntry[] = function(oreList as string[]) as IOreDictEntry[] {
    var oreListArray as IOreDictEntry[] = [];
    for oreName in oreList {
        oreListArray += ore(oreName);
    }
    return oreListArray;
};
