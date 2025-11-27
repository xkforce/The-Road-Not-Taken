#loader preinit
#modloaded contentcreator
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
            val hardness as float = rockHardness.containsKey(stonetype) ? rockHardness[stonetype] : 1.5;
            val resistance as float = rockResistance.containsKey(stonetype) ? rockResistance[stonetype] : 10.0;
            GenericBlock.createStairs(stair, <blockstate:minecraft:stone_stairs>).setStrength(hardness, resistance).register();
            GenericBlock.createFence(rock, wall).setStrength(hardness, resistance).register();
            GenericBlock.createSlab(rock, slab).setStrength(hardness, resistance).register();
        }
    }
}
