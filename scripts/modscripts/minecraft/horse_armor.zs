#loader crafttweaker
#priority 1

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
    val horseArmor as IItemStack = item(`minecraft:${key}_horse_armor`);
    val recipeName as string = `craft_${key}_horse_armor`;

    recipes.addShaped(recipeName, horseArmor, [
        [null, null, material],
        [material, <minecraft:saddle>, material],
        [material, material, material]
    ]);
}
