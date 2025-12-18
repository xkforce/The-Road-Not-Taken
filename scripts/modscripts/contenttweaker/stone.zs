#loader crafttweaker
#priority 1000

import scripts.variables.stone.rockData;
import scripts.variables.stone.mossyVariants;
import scripts.variables.stone.lichenVariants;

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

        for mossyvariant in mossyVariants {
            if (rockData[stonetype]["texturevariants"] has mossyvariant) {
                stoneShapeless(color, stonetype, mossyvariant, mossyvariant.substring(5), "contenttweaker:moss");
            }
        }

        for lichenvariant in lichenVariants {
            if (rockData[stonetype]["texturevariants"] has lichenvariant) {
                stoneShapeless(color, stonetype, lichenvariant, " ", `contenttweaker:${lichenvariant.substring(6)}lichen`);
            }
        }
        
        stoneDrops(color, stonetype);
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
