#loader preinit
#modloaded contentcreator
#priority 500

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

import scripts.variables.stone.rockData;
import scripts.variables.stone.rockHardness;
import scripts.variables.stone.rockResistance;

print("/--- Content Creator Stone Registration ---/");

val rock = Mat.rock();

for stonetype in rockData {
    for color in rockData[stonetype]["colors"] {
        for texturevariant in rockData[stonetype]["texturevariants"] {
            val base as string = stoneRegistryKey(color, stonetype, texturevariant);
            val stair as string = base + "stairs";
            val wall as string = base + "wall";
            val slab as string = base + "slab";
            val hardness as float = getHardness(stonetype);
            val resistance as float = getResistance(stonetype);
            GenericBlock.createStairs(stair, <blockstate:minecraft:stone_stairs>).setStrength(hardness, resistance).register();
            GenericBlock.createFence(rock, wall).setStrength(hardness, resistance).register();
            GenericBlock.createSlab(rock, slab).setStrength(hardness, resistance).register();
        }
    }
}

function getHardness(stonetype as string) as float {
    if (rockHardness.keys in stonetype) {
        return rockHardness[stonetype] as float;
    }
    return 1.5 as float;
}

function getResistance(stonetype as string) as float {
    if (rockResistance.keys in stonetype) {
        return rockResistance[stonetype] as float;
    }
    return 10.0 as float;
}