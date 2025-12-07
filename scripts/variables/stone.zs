#loader preinit contenttweaker crafttweaker
#priority 10000

import scripts.variables.colors.all;

static rockData as string[][string][string] = {
    "andesite": {
        "colors": all,
        "texturevariants": [" ", "brick", "chiseledbrick", "cobblestone", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"],
    }
};

static rockHardness as float[string] = {
    "basalt": 1.25,
    "obsidian": 50.0,
};

static rockResistance as float[string] = {
    "basalt": 4.2,
    "blackstone" : 6.0,
    "obsidian": 1200.0,
};