#loader preinit
#modloaded contentcreator
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

import scripts.variables.stone.rockData;

print("/--- Content Creator Stone Registration ---/");

val rock = Mat.rock();

for stonetype in rockData {
    for color in rockData[stonetype]["colors"] {
        for texturevariant in rockData[stonetype]["texturevariants"] {
            val base as string = stoneRegistryKey(color, stonetype, texturevariant);
            val stair as string = base + "stairs";
            val wall as string = base + "wall";
            val slab as string = base + "slab";
            GenericBlock.createStairs(stair, <blockstate:minecraft:stone_stairs>).register();
            GenericBlock.createFence(rock, wall).register();
            GenericBlock.createSlab(rock, slab).register();
        }
    }
}
