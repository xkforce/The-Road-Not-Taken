#loader contenttweaker
#modloaded contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val foodBlocks as string[] = [
    "jerkyblock",
    "baconblock",
    "saltedfishblock",
    "smokedsalmonblock",
    "smokedfishblock",
    "pemmicanblock",
    "driedfruitblock",
];

for food in foodBlocks {
    var block = VanillaFactory.createBlock(food, <blockmaterial:sponge>);
    block.setBlockHardness(0.5);
    block.setBlockResistance(2.5);
    block.setToolLevel(0);
    block.register();
}