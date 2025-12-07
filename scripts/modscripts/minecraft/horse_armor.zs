#loader crafttweaker
#priority 1000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val armor as IItemStack[string] = {
    "iron": <minecraft:iron_block>,
    "golden": <minecraft:gold_block>,
    "diamond": <minecraft:diamond_block>
};

for key, material in armor {
    val horseArmor as IItemStack = itemUtils.getItem("minecraft:" + key + "_horse_armor");

    recipes.addShaped("craft_" + key + "_horse_armor", horseArmor, [
        [null, null, material],
        [material, <minecraft:saddle>, material],
        [material, material, material]
    ]);
}