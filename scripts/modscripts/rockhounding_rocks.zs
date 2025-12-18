#loader crafttweaker
#modloaded rockhounding_rocks

import crafttweaker.item.IItemStack;

val OUTPUT_WALL as int = 6;
val OUTPUT_POLISHED as int = 4;
val OUTPUT_BRICKS as int = 4;

val letters as string[] = ["a","b","c","d","e","f","g", "h"];

for i in 0 .. 16 {
    for letter in letters {
        val block as IItemStack = getBlock("blocks", letter, i);
        val wall as IItemStack = getBlock("walls", letter, i);
        val polished as IItemStack = getBlock("polished", letter, i);
        val bricks as IItemStack = getBlock("bricks", letter, i);

        // Walls
        if (!isNull(wall) && !isNull(block)) {
            recipes.addShaped(wall * OUTPUT_WALL, [
                [block, block, block],
                [block, block, block]
            ]);
        } else {
            print("Rockhounding Rocks: Missing wall or block for " + letter + " meta " + i);
        }

        // Polished
        if (!isNull(polished) && !isNull(block)) {
            recipes.addShaped(polished * OUTPUT_POLISHED, [
                [block, block],
                [block, block]
            ]);
        } else {
            print("Rockhounding Rocks: Missing polished or block for " + letter + " meta " + i);
        }

        // Bricks
        if (!isNull(bricks) && !isNull(polished)) {
            recipes.addShaped(bricks * OUTPUT_BRICKS, [
                [polished, polished],
                [polished, polished]
            ]);
        } else {
            print("Rockhounding Rocks: Missing bricks or polished for " + letter + " meta " + i);
        }
    }
}

function getBlock(base as string, letter as string, meta as int) as IItemStack {
    return itemUtils.getItem("rockhounding_rocks:" + base + "_" + letter, meta);
}
