#loader preinit contenttweaker crafttweaker
#priority 1000

import scripts.variables.variants.defaultVariants;
import scripts.variables.variants.sandstoneVariants;

static itemTemplates as string[] = mergeStringArray([
    filterStringArray(defaultVariants, [[" ", "cobblestone", "crackedbrick", "crackedshortbrick"]]),
    filterStringArray(sandstoneVariants, [[" "]]),
    ["tile", "blank", "grid", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "pillar"],
]);
