#loader crafttweaker
#modloaded additions

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
    "blackdiamond": "contenttweaker:blackdiamond",
    "aquamarine": "contenttweaker:aquamarine",
    "bronze": "contenttweaker:bronze",
    "chocolatediamond": "contenttweaker:chocolatediamond",
    "citrine": "contenttweaker:citrine",
    "copper": "deeperdepths:material:0",
    "diamond": "minecraft:diamond",
    "electrum": "contenttweaker:electrum",
    "emerald": "minecraft:emerald",
    "gold": "minecraft:gold_ingot",
    "hepatizon": "contenttweaker:hepatizon",
    "iridium": "contenttweaker:iridium",
    "iron": "minecraft:iron_ingot",
    "meteoriron": "contenttweaker:meteoriron",
    "moonstone": "contenttweaker:moonstone",
    "netherite": "contenttweaker:netherite",
    "obsidian": "ore:obsidian",
    "opal": "contenttweaker:opal",
    "peridot": "contenttweaker:peridot",
    "rosegold": "contenttweaker:rosegold",
    "ruby": "contenttweaker:ruby",
    "sapphire": "contenttweaker:sapphire",
    "silver": "contenttweaker:silver",
    "morganite": "contenttweaker:morganite",
    "steel": "contenttweaker:steel",
    "tin": "contenttweaker:tin",
    "topaz": "contenttweaker:topaz",
    "wood": "ore:plankWood",
    "stone": "ore:materialStoneTool",
    "zircon": "contenttweaker:zircon",
};

for material, input in materials {
    for tool, pattern in tools {
        val recipeName as string = `craft_${material}_${tool}`;
        val toolItem as IItemStack = item(`additions:items-${material}${tool}`);
        if (!isNull(toolItem)) {
            var builder = RecipePattern.init(recipeName, toolItem, pattern);
            builder.with("x", ingredient(input));
            builder.with("s", <ore:stickWood>);
            builder.setMirrored(mirror has tool);
            builder.build();
        }
    }
}