#loader contenttweaker
#modloaded contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import scripts.variables.stone.rockData;

info("/--- ContentTweaker Stone Registration ---/");

for stonetype in rockData {
    for color in rockData[stonetype]["colors"] {
        for texturevariant in rockData[stonetype]["texturevariants"] {
            val base as string = stoneRegistryKey(color, stonetype, texturevariant);
            var newBlock as Block = VanillaFactory.createBlock(base, <blockmaterial:rock>);
            newBlock.setBlockHardness(1.5);
            newBlock.setBlockResistance(6.0);
            newBlock.setToolClass("pickaxe");
            newBlock.setToolLevel(0);
            newBlock.register();
        }
    }
}