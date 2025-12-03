#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val dyes as string[] = [
    "black",
    "blue",
    "brown",
    "camouflage",
    "cyan",
    "gray",
    "green",
    "lightblue",
    "lightgray",
    "lime",
    "magenta",
    "orange",
    "pink",
    "purple",
    "red",
    "white",
    "yellow",
];

for dye in dyes {
    var block = VanillaFactory.createBlock(dye + "dyeblock", <blockmaterial:rock>);
    block.setBlockHardness(3.0);
    block.setBlockResistance(15.0);
    block.setToolClass("pickaxe");
    block.setToolLevel(0);
    block.register();
}