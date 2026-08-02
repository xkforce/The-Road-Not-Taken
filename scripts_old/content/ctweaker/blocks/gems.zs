#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import mods.zenutils.StaticString;

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

for gem in gemBlocks {
    for i in 0 to 4 {
        val blockName as string = trim(gem, "block", (i == 0) ? " " : toString(i));
        var block as Block = VanillaFactory.createBlock(blockName, <blockmaterial:rock>);
        block.setBlockHardness(5.0);
        block.setBlockResistance(9.0);
        block.setToolClass("pickaxe");
        block.setToolLevel(2);
        block.setBeaconBase(true);
        block.register();
    }
}

function trim(p1 as string, p2 as string, p3 as string) as string {
    return StaticString.trim(p1 + p2 + p3).replace(" ", "");
}
