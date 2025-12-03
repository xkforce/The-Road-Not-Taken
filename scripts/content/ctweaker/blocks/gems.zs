#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val gemBlocks as string[] = [
    "amethyst",
    "aquamarine",
    "blackdiamond",
    "chocolatediamond",
    "citrine",
    "moonstone",
    "morganite",
    "opal",
    "peridot",
    "ruby",
    "sapphire",
    "topaz",
    "zircon",
];

for gem, count in gemBlocks {
    for i in 0 to 4 {
        val blockName = stoneRegistryKey(gem, "block", (i == 0) ? " " : toString(i));
        var block = VanillaFactory.createBlock(blockName, <blockmaterial:rock>);
        block.setBlockHardness(5.0);
        block.setBlockResistance(9.0);
        block.setToolClass("pickaxe");
        block.setToolLevel(2);
        block.setBeaconBase(true);
        block.register();
    }
}
