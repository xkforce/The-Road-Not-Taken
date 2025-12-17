#loader preinit contenttweaker crafttweaker
#modloaded zenutils
#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.zenutils.I18n;
import mods.zenutils.StaticString;

global stoneRegistryKey as function(string, string, string)string = function(color as string, stonetype as string, texturevariant as string) as string {
    return StaticString.trim(color + stonetype + texturevariant).replace(" ", "");
};

global stoneStair as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = `${stone}stairs`;
    val output as IItemStack = item(`contentcreator:${recipeName}`);
    val input as IItemStack = item(`contenttweaker:${stone}`);
    if (isNull(output)) {
        error(`Ouput item for *${recipeName}* is null!`);
        return false;
    }
    if (isNull(input)) {
        error(`Input item for *${recipeName}* is null!`);
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
    return true;
};

global stoneSlab as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = `${stone}slab`;
    val output as IItemStack = item(`contentcreator:${recipeName}`);
    val input as IItemStack = item(`contenttweaker:${stone}`);
    if (isNull(output)) {
        error(`Ouput item for *${recipeName}* is null!`);
        return false;
    }
    if (isNull(input)) {
        error(`Input item for *${recipeName}* is null!`);
        return false;
    }
    recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
    return true;
};

global stoneChiseledbrick as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, "chiseledbrick");
    val recipeName as string = stone;
    val output as IItemStack = item(`contenttweaker:${recipeName}`);
    val input as IItemStack = item("contentcreator:" + stoneRegistryKey(color, stonetype, "brickslab"));
    if (isNull(output)) {
        error(`Ouput item for *${recipeName}* is null!`);
        return false;
    }
    if (isNull(input)) {
        error(`Input item for *${recipeName}* is null!`);
        return false;
    }
    recipes.addShaped(recipeName, output, [[input], [input]]);
    return true;
};

global stoneBrick as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val recipeName as string = stoneRegistryKey(color, stonetype, "brick");
    val output as IItemStack = item(`contenttweaker:${recipeName}`);
    val input as IItemStack = item("contenttweaker:" + stoneRegistryKey(color, stonetype, " "));
    if (isNull(output)) {
        error(`Ouput item for *${recipeName}* is null!`);
        return false;
    }
    if (isNull(input)) {
        error(`Input item for *${recipeName}* is null!`);
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
    return true;
};

global stonePolished as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val recipeName as string = stoneRegistryKey(color, stonetype, "polished");
    val output as IItemStack = item(`contenttweaker:${recipeName}`);
    val input as IItemStack = item("contenttweaker:" + stoneRegistryKey(color, stonetype, " "));
    if (isNull(output)) {
        error(`Ouput item for *${recipeName}* is null!`);
        return false;
    }
    if (isNull(input)) {
        error(`Input item for *${recipeName}* is null!`);
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
    return true;
};

global stoneWall as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = stone + "wall";
    val output as IItemStack = item(`contentcreator:${recipeName}`);
    val input as IItemStack = item(`contenttweaker:${stone}`);
    if (isNull(output)) {
        error(`Ouput item for *${recipeName}* is null!`);
        return false;
    }
    if (isNull(input)) {
        error(`Input item for *${recipeName}* is null!`);
        return false;
    }
    recipes.addShaped(recipeName, output * 6, [[input, input, input], [input, input, input]]);
    return true;
};

global stoneSmelt as function(string, string)bool = function(color as string, stonetype as string) as bool {
    val recipeName as string = stoneRegistryKey(color, stonetype, " ");
    val output as IItemStack = item(`contenttweaker:${recipeName}`);
    val input as IItemStack = item("contenttweaker:" + stoneRegistryKey(color, stonetype, "cobblestone"));
    if (isNull(output)) {
        error(`Ouput item for *${recipeName}* is null!`);
        return false;
    }
    if (isNull(input)) {
        error(`Input item for *${recipeName}* is null!`);
        return false;
    }
    furnace.addRecipe(output, input, 0.1);
    return true;
};

global stoneName as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val stoneItem as IItemStack = item(`contenttweaker:${stone}`);
    if (isNull(stoneItem)) {
        error(`Item fot *${stone}* is null!`);
        return false;
    }
    val nameColor as string = (color == " ") ? " " : I18n.format(`${modpackID}.color.${color}.name`);
    val nameColorSplit as string[] = nameColor.split("-");
    val nameStoneType as string = I18n.format(`${modpackID}.stonetype.${stonetype}.name`);
    var nameStoneVariant as string= I18n.format(`${modpackID}.variant.${(texturevariants == " " ? "base" : texturevariants)}.name`, nameStoneType);
    var displayName as string = I18n.format(`${modpackID}.modifier.base.name`, nameColor, nameStoneVariant);
    if (nameColorSplit.length == 2) {
        displayName = I18n.format(`${modpackID}.modifier.split.name`, nameColorSplit[0], nameColorSplit[1], nameStoneVariant);
        if (stonetype == "apacherhyolite") {
            displayName = I18n.format(`${modpackID}.modifier.apacherhyolite.name`, nameColorSplit[1], nameColorSplit[0], nameStoneVariant);
        }
    }

    stoneItem.displayName = StaticString.trim(displayName);

    for blocktype in ["wall", "stairs", "slab"] {
        val blockItem as IItemStack = item(`contentcreator:${stone}${blocktype}`);
        if (!isNull(blockItem)) {
            blockItem.displayName = I18n.format(`${modpackID}.block.${blocktype}.name`, displayName);
        }
    }

    return true;
};

global stoneOre as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val stoneItem as IItemStack = item(`contenttweaker:${stone}`);
    val stoneDict as IOreDictEntry = ore(stonetype);
    if (stoneDict.items has stoneItem) {
        error(`<ore:${stonetype}> already contains ${stone}!`);
        return false;
    }
    stoneDict.add(stoneItem);
    return true;
};

global stoneShapeless as function(string, string, string, string, string)bool = function(color as string, stonetype as string, outputvariant as string, inputvariant as string, item as string) as bool {
    val output as string = stoneRegistryKey(color, stonetype, outputvariant);
    val input as string = stoneRegistryKey(color, stonetype, inputvariant);
    val outputItem as IItemStack = itemString(`contenttweaker:${output}`);
    val inputItem as IItemStack = itemString(`contenttweaker:${input}`);
    val craftingItem as IItemStack = itemString(item);
    if (isNull(outputItem)) {
        error(`Ouput item for *${output}* is null!`);
        return false;
    }
    if (isNull(inputItem)) {
        error(`Input item for *${output}* is null!`);
        return false;
    }
    if (isNull(craftingItem)) {
        error(`Crafing Item for *${output}* is null!`);
        return false;
    }
    recipes.addShapeless(output, outputItem, [inputItem, craftingItem]);
    return true;
};
