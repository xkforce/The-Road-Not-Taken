#loader crafttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<minecraft:pumpkin_pie>);
recipes.addShapeless(<minecraft:pumpkin_pie>, [<minecraft:pumpkin>, <minecraft:sugar>, <ore:egg>, <minecraft:wheat>]);

recipes.addShaped(<minecraft:packed_ice>, [
    [<minecraft:ice>, <minecraft:ice>, <minecraft:ice>],
    [<minecraft:ice>, <minecraft:ice>, <minecraft:ice>],
    [<minecraft:ice>, <minecraft:ice>, <minecraft:ice>]
]);

if loadedMods has "quark" {
    val slabs as string[IItemStack] = {
        <minecraft:stone_slab>: "quark:polished_stone",
        <minecraft:stone_slab2>: "minecraft:red_sandstone",
        <minecraft:stone_slab:1>: "minecraft:sandstone",
        <minecraft:stone_slab:5>: "minecraft:stonebrick"
    };

    for slab, material in slabs {
        val input as IItemStack = item(material);
        recipes.remove(slab);
        recipes.addShaped(slab * 6, [[input, input, input]]);
    }
}
