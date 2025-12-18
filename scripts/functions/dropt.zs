#loader crafttweaker
#modloaded dropt
#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.dropt.Dropt;

import scripts.variables.misc.materials;
import scripts.variables.stone.defaultVariants;
import scripts.variables.stone.mossyVariants;
import scripts.variables.stone.rockData;

global droptName as function(string)string = function(name as string) as string {
    return `dropt_${name}`.replace(":", "_");
};

global replaceDrops as function(string, string[])void = function(name as string, drops as string[]) as void {
    Dropt.list(droptName(name))
    .add(Dropt.rule()
        .matchBlocks([name])
        .addDrop(Dropt.drop()
            .items("ALL", itemList(drops))
        )
    );
};

global replaceToolDrops as function(string, string[], string[])void = function(name as string, tools as string[], drops as string[]) as void {
    Dropt.list(droptName(name))
    .add(Dropt.rule()
        .matchBlocks([name])
        .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", itemList(tools))
        )
        .addDrop(Dropt.drop()
            .items("ALL", itemList(drops))
        )
    );
};

global stoneDrops as function(string, string)void = function(color as string, stonetype as string) as void {
    val hammers as string[] = [];
    for material in materials {
        hammers += `additions:items-${material}${tool}`;
    }
    val cobblestone as string = `contenttweaker:${stoneRegistryKey(color, stonetype, "cobblestone")}`;
    val variants as string[] = rockData[stonetype]["texturevariants"];
    // handle default variants
    for vari in defaultVariants {
        if (variants has vari) {
            val rock as string = stoneRegistryKey(color, stonetype, vari);
            replaceToolDrops(`contenttweaker:${rock}`, hammers, [cobblestone]);
        }
    }
    // handle mossy variants
    for vari in mossyVariants {
        if (variants has vari) {
            val rock as string = stoneRegistryKey(color, stonetype, vari);
            replaceToolDrops(`contenttweaker:${rock}`, hammers, [cobblestone, "contenttweaker:moss"]);
        }
    }
};
