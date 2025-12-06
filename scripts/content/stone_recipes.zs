#loader crafttweaker
#priority 1000

import scripts.variables.stone.rockData;

print("/--- CraftTweaker Stone Recipe Registration ---/");

for stonetype in rockData {
    for color in rockData[stonetype]["colors"] {
        for texturevariant in rockData[stonetype]["texturevariants"] {
            stoneStair(color, stonetype, texturevariant);
            stoneSlab(color, stonetype, texturevariant);
            stoneWall(color, stonetype, texturevariant);
            // handle block names for easier translation
            stoneName(color, stonetype, texturevariant);
        }
        stoneChiseledbrick(color, stonetype);
        stoneBrick(color, stonetype);
        stonePolished(color, stonetype);
        stoneSmelt(color, stonetype);
    }
}