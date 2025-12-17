#loader contenttweaker
#modloaded contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import scripts.variables.stone.rockData;
import scripts.variables.stone.rockHardness;
import scripts.variables.stone.rockResistance;

info("/--- ContentTweaker Stone Registration ---/");

for stonetype in rockData {
    for color in rockData[stonetype]["colors"] {
        for texturevariant in rockData[stonetype]["texturevariants"] {
            val base as string = stoneRegistryKey(color, stonetype, texturevariant);
            var newBlock as Block = VanillaFactory.createBlock(base, <blockmaterial:rock>);
            newBlock.setBlockHardness(getHardness(stonetype));
            newBlock.setBlockResistance(getResistance(stonetype));
            newBlock.setToolClass("pickaxe");
            newBlock.setToolLevel(0);
            newBlock.register();
        }
    }
}

function getHardness(stonetype as string) as float {
    if (rockHardness has stonetype) {
        return rockHardness[stonetype] as float;
    }
    return 1.5 as float;
}

function getResistance(stonetype as string) as float {
    if (rockResistance has stonetype) {
        return rockResistance[stonetype] as float;
    }
    return 10.0 as float;
}
