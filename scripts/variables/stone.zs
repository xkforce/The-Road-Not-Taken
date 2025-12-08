#loader preinit contenttweaker crafttweaker
#priority 10000

import scripts.variables.colors.c123;
import scripts.variables.colors.c119;
import scripts.variables.colors.c109;
import scripts.variables.colors.c124;
import scripts.variables.colors.c124end;
import scripts.variables.colors.c125;
import scripts.variables.colors.c18;
import scripts.variables.colors.c112;
import scripts.variables.colors.c259;
import scripts.variables.colors.none;

static defaultVariants as string[] = [
    " ",
    "brick",
    "chiseledbrick",
    "cobblestone",
    "crackedbrick",
    "crackedshortbrick",
    "debossed",
    "polished",
    "shortbrick"
];

static sandstoneVariants as string[] = [
    " ", "archerleft", "archerright", "armsdown", "armsup", "axeleft", "axeright", "bladeleft", "bladeright", "brokenheart", "carvedcreeper", "carvedskeleton", "carvedzombie", "chestleft", "chestright", "chibicreeperleft", "chibicreeperright", "cut", "dogleft", "dogright", "explorerleft", "explorerright", "fire", "fishingrodleft", "fishingrodright", "friend", "ghast", "guster", "heart", "miner", "mourner", "potion", "prize", "sheaf", "shelter", "slimeleft", "slimeright", "swirlcb", "swirlccb", "swirlcct", "swirlct", "turtleleft", "turtleright", "waveleft", "waveright", "wither"
];

static rockData as string[][string][string] = {
    "smoothstone": {
        "colors": none,
        "texturevariants": none
    },
    // Overworld Stones
    "andesite": {
        "colors": c123,
        "texturevariants": defaultVariants
    },
    "aventurine": {
        "colors": c119,
        "texturevariants": defaultVariants
    },
    "concrete": {
        "colors": c109,
        "texturevariants": defaultVariants
    },
    "apacherhyolite": {
        "colors": c259,
        "texturevariants": defaultVariants
    },
    "diorite": {
        "colors": c124,
        "texturevariants": defaultVariants
    },
    "granite": {
        "colors": c124,
        "texturevariants": defaultVariants
    },
    "obsidian": {
        "colors": c124,
        "texturevariants": defaultVariants
    },
    "prismarine": {
        "colors": c125,
        "texturevariants": [" ", "brick", "chiseledbrick", "polished"]
    },
    "sandstone": {
        "colors": mergeStringArray([c124, none]),
        "texturevariants": sandstoneVariants,
        "flags": ["--onlyBlocks"]
    },
    "sandstonered": {
        "colors": none,
        "texturevariants": sandstoneVariants,
        "flags": ["--onlyBlocks"]
    },
    // Nether Stones
    "cryingobsidian": {
        "colors": c109,
        "texturevariants": defaultVariants
    },
    "netherquartz": {
        "colors" : c18,
        "texturevariants": [" ", "chiseled", "pillar", "smooth"],
        "flags": ["--onlyBlocks"]
    },
    "netherrack": {
        "colors": c125,
        "texturevariants": none
    },
    "netherstone": {
        "colors": c125,
        "texturevariants": mergeStringArray([defaultVariants, ["gilded"]])
    },
    // End Stones
    "endstone": {
        "colors": c124end,
        "texturevariants": defaultVariants
    },
    "enderstone": {
        "colors": c124end,
        "texturevariants": defaultVariants
    },
    "flavolite": {
        "colors": c124,
        "texturevariants": defaultVariants
    },
    "purpur": {
        "colors": c124,
        "texturevariants": [" ", "pillar"],
        "flags": ["--onlyBlocks"]
    },
    // Extraterrestrial Stones
    "basalt": {
        "colors": c125,
        "texturevariants": defaultVariants
    },
    "cythereastone": {
        "colors": c125,
        "texturevariants": defaultVariants
    },
    "rutile": {
        "colors": c125,
        "texturevariants": defaultVariants
    },
    "venusstone": {
        "colors": c125,
        "texturevariants": defaultVariants
    },
    "augite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "diopside": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "enstatite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "fayalite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "forsterite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "lunastone": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "marsstone": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "mercurystone": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "oldhamite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "orthoclase": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "orthopyroxene": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "pigeonite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "plagioclase": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "tephroite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "troilite": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    "aegirine": {
        "colors": none,
        "texturevariants": defaultVariants
    },
    // Unknown
    "umbralith": {
        "colors": c125,
        "texturevariants": defaultVariants
    },
    "violecite": {
        "colors": c125,
        "texturevariants": defaultVariants
    },
    // Misc
    "wool": {
        "colors": c112,
        "texturevariants": none
    },
};

static rockHardness as float[string] = {
    "basalt": 1.25,
    "obsidian": 50.0,
    "hardenedclay": 1.25,
};

static rockResistance as float[string] = {
    "basalt": 4.2,
    "blackstone" : 6.0,
    "obsidian": 1200.0,
    "hardenedclay": 4.2,
};