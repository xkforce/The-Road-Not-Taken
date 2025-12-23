#loader preinit contenttweaker crafttweaker
#priority 10000

import scripts.variables.stone.defaultVariants;
import scripts.variables.stone.sandstoneVariants;

static itemTemplates as string[] = mergeStringArray([
    filterStringArray(defaultVariants, [[" ", "cobblestone", "crackedbrick", "crackedshortbrick"]]),
    filterStringArray(sandstoneVariants, [[" "]]),
    ["tile", "blank", "fourxfour", "brick", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "pillar"],
]);
