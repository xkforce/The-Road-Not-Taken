#loader crafttweaker
#priority 1000

import scripts.variables.stone.rockData;

info("/--- CraftTweaker Stone Recipe Registration ---/");

for stonetype in rockData {
    for color in rockData[stonetype]["colors"] {
        for texturevariant in rockData[stonetype]["texturevariants"] {
            if (shouldProcess(stonetype)) {
                stoneStair(color, stonetype, texturevariant);
                stoneSlab(color, stonetype, texturevariant);
            }
            // handle block names for easier translation
            stoneName(color, stonetype, texturevariant);
            // setup oredicts for all rock types
            stoneOre(color, stonetype, texturevariant);
        }
        if (rockData[stonetype]["texturevariants"] has "chiseledbrick") {
            stoneChiseledbrick(color, stonetype);
        }
        if (rockData[stonetype]["texturevariants"] has "brick") {
            stoneBrick(color, stonetype);
        }
        if (rockData[stonetype]["texturevariants"] has "polished") {
            stonePolished(color, stonetype);
        }
        if (rockData[stonetype]["texturevariants"] has "cobblestone") {
            stoneSmelt(color, stonetype);
        }
    }
}

function shouldProcess(stonetype as string) as bool {
    if (isNull(rockData[stonetype]["flags"])) {
        // stone has no flags, process...
        return true;
    } else {
        if (rockData[stonetype]["flags"] has "--onlyBlocks") {
            return false;
        }
        return true;
    }
}
