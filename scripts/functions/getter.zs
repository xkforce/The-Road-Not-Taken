#loader preinit contenttweaker crafttweaker
#modloaded zenutils
#priority 1111110

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

/**
 * Gets an item from the item registry.
 * @param itemName The name of the item.
 * @return The item.
 */
global item as function(string)IItemStack = function(itemName as string) as IItemStack {
    return itemUtils.getItem(itemName.toLowerCase());
};

/**
 * Gets an item from the item registry with a specific meta.
 * @param itemName The name of the item.
 * @param meta The meta of the item.
 * @return The item.
 */
global itemMeta as function(string, int)IItemStack = function(itemName as string, meta as int) as IItemStack {
    return itemUtils.getItem(itemName.toLowerCase(), meta);
};

/**
 * Gets an item from the item registry with a specific meta.
 * @param itemString The string of the item.
 * @return The item.
 */
global itemString as function(string)IItemStack = function(itemString as string) as IItemStack {
    val parts as string[] = itemString.toLowerCase().split(":");
    if (parts.length < 2) {
        error(`Invalid item string '${itemString}'.`);
        return null;
    }
    val modid as string = parts[0];
    val itemid as string = parts[1];
    var meta as int = 0;
    if (parts.length >= 3) {
        if (parts[2] == "*") {
            meta = anyMeta;
        } else {
            meta = parts[2] as int;
        }
    }
    return itemUtils.getItem(`${modid}:${itemid}`, meta);
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

/**
 * Checks if a mod is loaded.
 * @param modid The modid of the mod.
 * @return True if the mod is loaded, false otherwise.
 */
global modLoaded as function(string)bool = function(modid as string) as bool {
    return loadedMods has modid || modid == "ore";
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
        error(`Invalid item string '${itemString}'.`);
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
    if (modLoaded(mod(itemName))) {
        val stack as IItemStack = itemString(itemName);
        if (isNull(stack)) {
            error(`Item '${itemName}' is null.`);
            return false;
        }
        return true;
    }
    error(`Mod for item '${itemName}' is not loaded.`);
    return false;
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
    return itemString(ingredientName) as IIngredient;
};

/**
 * Gets a fluid from the fluid registry.
 * @param fluidName The name of the fluid.
 * @return The fluid.
 */
global fluid as function(string)ILiquidStack = function(fluidName as string) as ILiquidStack {
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
    error(`Fluid '${fluidName}' not found.`);
    return null;
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
            itemListArray += itemString(itemName);
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
