#loader crafttweaker
#modloaded dropt
#priority 2147483647

import mods.dropt.Dropt;

/**
 * Formats a string to be a valid dropt list name.
 * @param name The name to format.
 * @return The formatted name.
 */
global droptName as function(string)string = function(name as string) as string {
    return `dropt_${name}`.replace(":", "_");
};

/**
 * Replaces the drops of a block with a new set of drops.
 * @param name The name of the block.
 * @param drops The new drops.
 */
global replaceDrops as function(string, string[])void = function(name as string, drops as string[]) as void {
    Dropt.list(droptName(name))
    .add(Dropt.rule()
        .matchBlocks([name])
        .addDrop(Dropt.drop()
            .items("ALL", itemList(drops))
        )
    );
};

/**
 * Replaces the drops of a block with a new set of drops, but only for a specific harvester.
 * @param name The name of the block.
 * @param tools The tools that can harvest the block.
 * @param drops The new drops.
 */
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

