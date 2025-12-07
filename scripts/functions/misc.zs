#loader preinit contenttweaker crafttweaker
#modloaded zenutils
#priority 10000

import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;
import mods.zenutils.StaticString;

global stoneRegistryKey as function(string, string, string)string = function(color as string, stonetype as string, texturevariant as string) as string {
    return StaticString.trim(color + stonetype + texturevariant);
};

global stoneStair as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = stone + "stairs";
    val output as IItemStack = itemUtils.getItem("contentcreator:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stone);
    if (isNull(output)) {
        error("Output item for <" + recipeName + "> is null!");
        return false;
    }
    if (isNull(input)) {
        error("Input item for <" + recipeName + "> is null!");
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
    return true;
};

global stoneSlab as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = stone + "slab";
    val output as IItemStack = itemUtils.getItem("contentcreator:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stone);
    if (isNull(output)) {
        error("Output item for <" + recipeName + "> is null!");
        return false;
    }
    if (isNull(input)) {
        error("Input item for <" + recipeName + "> is null!");
        return false;
    }
    recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
    return true;
};

global stoneChiseledbrick as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, "chiseledbrick");
    val recipeName as string = stone;
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contentcreator:" + stoneRegistryKey(color, stonetype, "brickslab"));
    if (isNull(output)) {
        error("Output item for <" + recipeName + "> is null!");
        return false;
    }
    if (isNull(input)) {
        error("Input item for <" + recipeName + "> is null!");
        return false;
    }
    recipes.addShaped(recipeName, output, [[input], [input]]);
    return true;
};

global stoneBrick as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val recipeName as string = stoneRegistryKey(color, stonetype, "brick");
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stoneRegistryKey(color, stonetype, " "));
    if (isNull(output)) {
        error("Output item for <" + recipeName + "> is null!");
        return false;
    }
    if (isNull(input)) {
        error("Input item for <" + recipeName + "> is null!");
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
    return true;
};

global stonePolished as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val recipeName as string = stoneRegistryKey(color, stonetype, "polished");
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stoneRegistryKey(color, stonetype, " "));
    if (isNull(output)) {
        error("Output item for <" + recipeName + "> is null!");
        return false;
    }
    if (isNull(input)) {
        error("Input item for <" + recipeName + "> is null!");
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
    return true;
};

global stoneWall as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = stone + "wall";
    val output as IItemStack = itemUtils.getItem("contentcreator:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stone);
    if (isNull(output)) {
        error("Output item for <" + recipeName + "> is null!");
        return false;
    }
    if (isNull(input)) {
        error("Input item for <" + recipeName + "> is null!");
        return false;
    }
    recipes.addShaped(recipeName, output * 6, [[input, input, input], [input, input, input]]);
    return true;
};

global stoneSmelt as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val recipeName as string = stoneRegistryKey(color, stonetype, " ");
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stoneRegistryKey(color, stonetype, "cobblestone"));
    if (isNull(output)) {
        error("Output item for <" + recipeName + "> is null!");
        return false;
    }
    if (isNull(input)) {
        error("Input item for <" + recipeName + "> is null!");
        return false;
    }
    furnace.addRecipe(output, input, 0.1);
    return true;
};

global stoneName as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val item as IItemStack = itemUtils.getItem("contenttweaker:" + stone);
    if (isNull(item)) {
        error("Item for <" + stone + "> is null!");
        return false;
    }
    val nameColor as string = I18n.format(modpackID + ".color." + color + ".name");
    val nameStoneType as string = I18n.format(modpackID + ".stonetype." + stonetype + ".name");
    var displayName as string;
    if (texturevariants == " ") {
        displayName = I18n.format(modpackID + ".variant.base.name", nameColor, nameStoneType);
    } else {
        displayName = I18n.format(modpackID + ".variant." + texturevariants + ".name", nameColor, nameStoneType);
    }
    item.displayName = displayName;

    for blocktype in ["wall", "stairs", "slab"] {
        val blockItem as IItemStack = itemUtils.getItem("contentcreator:" + stone + blocktype);
        if (!isNull(blockItem)) {
            blockItem.displayName = I18n.format(modpackID + ".block." + blocktype + ".name", displayName);
        }
    }

    return true;
};