#loader preinit contenttweaker crafttweaker
#priority 10000

import scripts.variables.colors.black;
import scripts.variables.colors.blue;
import scripts.variables.colors.brown;
import scripts.variables.colors.cyan;
import scripts.variables.colors.gray;
import scripts.variables.colors.green;
import scripts.variables.colors.lightblue;
import scripts.variables.colors.lightgray;
import scripts.variables.colors.lime;
import scripts.variables.colors.magenta;
import scripts.variables.colors.orange;
import scripts.variables.colors.pink;
import scripts.variables.colors.purple;
import scripts.variables.colors.red;
import scripts.variables.colors.white;
import scripts.variables.colors.yellow;

static rockData as string[][string][string] = {
    "andesite": {
        "colors": mergeStringArray([black, blue, brown, cyan, gray, green, lightblue, lightgray, lime, magenta, orange, pink, purple, red, white, yellow]),
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