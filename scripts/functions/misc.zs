#loader preinit contenttweaker crafttweaker
#modloaded zenutils
#priority 10000

import crafttweaker.item.IItemStack;
import mods.zenutils.StaticString;

global stoneRegistryKey as function(string, string, string)string = function(color as string, stonetype as string, texturevariant as string) as string {
    return StaticString.trim(color + stonetype + texturevariant);
};

global stoneStair as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    var errored as bool = false;
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = stone + "stairs";
    val output as IItemStack = itemUtils.getItem("contentcreator:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stone);
    if (isNull(output)) {
        print("Error: Output item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (isNull(input)) {
        print("Error: Input item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (errored) {
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
    return true;
};

global stoneSlab as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    var errored as bool = false;
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = stone + "slab";
    val output as IItemStack = itemUtils.getItem("contentcreator:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stone);
    if (isNull(output)) {
        print("Error: Output item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (isNull(input)) {
        print("Error: Input item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (errored) {
        return false;
    }
    recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
    return true;
};

global stoneChiseledbrick as function(string, string)bool = function(color as string, stonetype as string) as bool {
    var errored as bool = false;
    val stone as string = stoneRegistryKey(color, stonetype, "chiseledbrick");
    val recipeName as string = stone;
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contentcreator:" + stoneRegistryKey(color, stonetype, "brickslab"));
    if (isNull(output)) {
        print("Error: Output item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (isNull(input)) {
        print("Error: Input item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (errored) {
        return false;
    }
    recipes.addShaped(recipeName, output, [[input], [input]]);
    return true;
};

global stoneBrick as function(string, string)bool = function(color as string, stonetype as string) as bool {
    var errored as bool = false;
    val recipeName as string = stoneRegistryKey(color, stonetype, "brick");
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stoneRegistryKey(color, stonetype, " "));
    if (isNull(output)) {
        print("Error: Output item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (isNull(input)) {
        print("Error: Input item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (errored) {
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
    return true;
};

global stonePolished as function(string, string)bool = function(color as string, stonetype as string) as bool {
    var errored as bool = false;
    val recipeName as string = stoneRegistryKey(color, stonetype, "polished");
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stoneRegistryKey(color, stonetype, " "));
    if (isNull(output)) {
        print("Error: Output item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (isNull(input)) {
        print("Error: Input item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (errored) {
        return false;
    }
    recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
    return true;
};

global stoneWall as function(string, string, string)bool = function(color as string, stonetype as string, texturevariants as string) as bool {
    var errored as bool = false;
    val stone as string = stoneRegistryKey(color, stonetype, texturevariants);
    val recipeName as string = stone + "wall";
    val output as IItemStack = itemUtils.getItem("contentcreator:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stone);
    if (isNull(output)) {
        print("Error: Output item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (isNull(input)) {
        print("Error: Input item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (errored) {
        return false;
    }
    recipes.addShaped(recipeName, output * 6, [[input, input, input], [input, input, input]]);
    return true;
};

global stoneSmelt as function(string, string)bool = function(color as string, stonetype as string) as bool {
    var errored as bool = false;
    val recipeName as string = stoneRegistryKey(color, stonetype, " ");
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + recipeName);
    val input as IItemStack = itemUtils.getItem("contenttweaker:" + stoneRegistryKey(color, stonetype, "cobblestone"));
    if (isNull(output)) {
        print("Error: Output item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (isNull(input)) {
        print("Error: Input item for <" + recipeName + "> is null!");
        errored = true;
    }
    if (errored) {
        return false;
    }
    furnace.addRecipe(output, input, 0.1);
    return true;
};