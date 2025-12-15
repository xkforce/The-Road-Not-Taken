#loader preinit
#modloaded contentcreator
#priority 500

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

import scripts.variables.stone.rockData;
import scripts.variables.stone.rockHardness;
import scripts.variables.stone.rockResistance;

info("/--- Content Creator Stone Registration ---/");

// Walls are currently commented out as there isn't a way to create them yet.

val rock = Mat.rock();

for stonetype in rockData {
    if (isNull(rockData[stonetype]["colors"])) {
        error(`Stonetype *${stonetype}* misses the *colors* field!`);
    }
    if (isNull(rockData[stonetype]["texturevariants"])) {
        error(`Stonetype *${stonetype}* misses the *texturevariants* field!`);
    }
    if (shouldProcess(stonetype)) {
        for color in rockData[stonetype]["colors"] {
            for texturevariant in rockData[stonetype]["texturevariants"] {
                val base as string = stoneRegistryKey(color, stonetype, texturevariant);
                val stair as string = base + "stairs";
                // val wall as string = base + "wall";
                val slab as string = base + "slab";
                val hardness as float = getHardness(stonetype);
                val resistance as float = getResistance(stonetype);
                GenericBlock.createStairs(stair, <blockstate:minecraft:stone_stairs>).setStrength(hardness, resistance).register();
                // GenericBlock.createFence(rock, wall).setStrength(hardness, resistance).register();
                GenericBlock.createSlab(rock, slab).setStrength(hardness, resistance).register();
            }
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

function shouldProcess(stonetype as string) as bool {
    if (isNull(rockData[stonetype]["flags"])) {
        // stone has no flags, process...
        return true;
    } else {
        if (rockData[stonetype]["flags"] has "--onlyBlocks") {
            info(`Found *--onlyBlocks* flag for ${stonetype}! No additional blocks will be added.`);
            return false;
        }
        return true;
    }
}
