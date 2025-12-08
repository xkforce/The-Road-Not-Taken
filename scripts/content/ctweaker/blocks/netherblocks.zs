#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var foolsgold = VanillaFactory.createBlock("foolsgold", <blockmaterial:rock>);
foolsgold.setBlockHardness(1.5);
foolsgold.setBlockResistance(30.0);
foolsgold.setToolClass("pickaxe");
foolsgold.setToolLevel(0);
foolsgold.register();

val sulfur as string[] = [
    "yellow", "black", "chartreuse", "red", "brown"
];

for s in sulfur {
    var b = VanillaFactory.createBlock(s + "sulfurblock", <blockmaterial:rock>);
    b.setBlockHardness(0.5);
    b.setBlockResistance(2.5);
    b.setToolClass("pickaxe");
    b.setToolLevel(0);
    b.register();
}