#loader crafttweaker
#modloaded additions
#priority 1

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.ctintegration.util.RecipePattern;
import mods.zenutils.I18n;

val tools as string[][string] = {
    "dagger": [" x", "s "],
    "hoe": ["xx", " s", " s"],
    "hammer": ["xx ", "xss", "xx "],
    "shovel": ["x", "s", "s"],
    "sword": ["x", "x", "s"],
    "axe": ["xx", "xs", " s"],
    "pickaxe": ["xxx", " s ", " s "],
    "battleaxe": ["xxx", "xsx", " s "],
};

val mirror as string[] = ["hoe", "axe", "hammer"];

val materials as string[string] = {
    "amethyst": "contenttweaker:amethyst",
    "aquamarine": "contenttweaker:aquamarine",
    "blackdiamond": "contenttweaker:blackdiamond",
    "bronze": "contenttweaker:bronze",
    "chocolatediamond": "contenttweaker:chocolatediamond",
    "ceresite": "contenttweaker:ceresite",
    "citrine": "contenttweaker:citrine",
    "copper": "deeperdepths:material:0",
    "diamond": "minecraft:diamond",
    "electrum": "contenttweaker:electrum",
    "emerald": "minecraft:emerald",
    "fluorite": "contenttweaker:fluorite",
    "gold": "minecraft:gold_ingot",
    "hepatizon": "contenttweaker:hepatizon",
    "iron": "minecraft:iron_ingot",
    "lonsdaleite": "contenttweaker:lonsdaleite",
    "meteoriron": "contenttweaker:meteoriron",
    "moonstone": "contenttweaker:moonstone",
    "morganite": "contenttweaker:morganite",
    "netherite": "futuremc:netherite",
    "obsidian": "ore:obsidian",
    "opal": "contenttweaker:opal",
    "peridot": "contenttweaker:peridot",
    "platinum": "contenttweaker:platinum",
    "rosegold": "contenttweaker:rosegold",
    "ruby": "contenttweaker:ruby",
    "sapphire": "contenttweaker:sapphire",
    "silver": "contenttweaker:silver",
    "steel": "contenttweaker:steel",
    "stone": "ore:materialStoneTool",
    "tin": "contenttweaker:tin",
    "topaz": "contenttweaker:topaz",
    "whitecopper": "contenttweaker:whitecopper",
    "whitegold": "contenttweaker:whitegold",
    "wood": "ore:plankWood",
    "zircon": "contenttweaker:zircon",
};

for material, input in materials {
    for tool, pattern in tools {
        val recipeName as string = `craft_${material}_${tool}`;
        val itemName as string = `additions:items-${material}${tool}`;
        if (itemLoaded(itemName) && itemLoaded(input)) {
            val toolItem as IItemStack = item(itemName);
            var builder as RecipePattern = RecipePattern.init(recipeName, toolItem, pattern);
            builder.with("x", ingredient(input));
            builder.with("s", <ore:stickWood>);
            builder.setMirrored(mirror has tool);
            builder.build();
        }
    }
}
