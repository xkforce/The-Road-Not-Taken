#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val metals as string[] = [
    "bronze",
    "electrum",
    "hepatizon",
    "iridium",
    "meteoriron",
    "rosegold",
    "silver",
    "steel",
    "tin",
];

for metal in metals {
    for i in 0 to 3 {
        val blockname as string = stoneRegistryKey(metal, "block", (i == 0) ? " " : toString(i));
        var block = VanillaFactory.createBlock(blockname, <blockmaterial:iron>);
        block.setBlockHardness(5.0);
        block.setBlockResistance(45.0);
        block.setToolClass("pickaxe");
        block.setToolLevel(2);
        block.setBeaconBase(true);
        block.register();
    }
}