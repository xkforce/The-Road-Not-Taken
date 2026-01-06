#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val foodBlocks as string[] = [
    "jerky",
    "bacon",
    "saltedfish",
    "smokedsalmon",
    "smokedfish",
    "pemmican",
    "driedfruit",
];

for food in foodBlocks {
    var block as Block = VanillaFactory.createBlock(`${food}block`, <blockmaterial:sponge>);
    block.setBlockHardness(0.5);
    block.setBlockResistance(2.5);
    block.setToolLevel(0);
    block.register();
}
