#loader preinit contenttweaker crafttweaker
#priority 10000

import scripts.variables.colors.c100;
import scripts.variables.colors.c101;
import scripts.variables.colors.c18;
import scripts.variables.colors.none;
import scripts.variables.misc.lowerColors;

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

static OverworldVariants as string[] = mergeStringArray([defaultVariants, [
    "lichenbrown",
    "lichenorange",
    "lichenred",
    "lichenyellow",
    "mossybrick",
    "mossychiseledbrick",
    "mossydebossed",
    "mossycobblestone",
    "mossypolished",
    "mossyshortbrick",
]]);

static defaultnocobbleVariants as string[] = filterStringArray(defaultVariants, [["cobblestone"]]);

static sandstoneVariants as string[] = [
    " ", "archerleft", "archerright", "armsdown", "armsup", "axeleft", "axeright", "bladeleft", "bladeright", "brokenheart", "carvedcreeper", "carvedskeleton", "carvedzombie", "chestleft", "chestright", "chibicreeperleft", "chibicreeperright", "cut", "dogleft", "dogright", "explorerleft", "explorerright", "fire", "fishingrodleft", "fishingrodright", "friend", "ghast", "guster", "heart", "miner", "mourner", "potion", "prize", "sheaf", "shelter", "slimeleft", "slimeright", "swirlcb", "swirlccb", "swirlcct", "swirlct", "turtleleft", "turtleright", "waveleft", "waveright", "wither"
];

static rockData as string[][string][string] = {
    "smoothstone": {
        "colors": none,
        "texturevariants": none
    },
    "hardenedclay": {
        "colors": mergeStringArray([none, lowerColors]),
        "texturevariants": [" ", "brick", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"]
    },
    // Overworld Stones
    "andesite": {
        "colors": c100,
        "texturevariants": OverworldVariants
    },
    "aventurine": {
        "colors": c100,
        "texturevariants": OverworldVariants
    },
    "concrete": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "apacherhyolite": {
        "colors": c101,
        "texturevariants": OverworldVariants
    },
    "diorite": {
        "colors": c100,
        "texturevariants": OverworldVariants
    },
    "granite": {
        "colors": c100,
        "texturevariants": OverworldVariants
    },
    "obsidian": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "prismarine": {
        "colors": c100,
        "texturevariants": [" ", "brick", "chiseledguardian", "chiseledsquid", "polished"]
    },
    "sandstone": {
        "colors": mergeStringArray([c100, none]),
        "texturevariants": sandstoneVariants,
        "flags": ["--onlyBlocks"]
    },
    // Nether Stones
    "cryingobsidian": {
        "colors": c101,
        "texturevariants": defaultnocobbleVariants
    },
    "netherquartz": {
        "colors" : c18,
        "texturevariants": [" ", "chiseled", "pillar", "smooth"],
        "flags": ["--onlyBlocks"]
    },
    "netherrack": {
        "colors": c100,
        "texturevariants": none
    },
    "netherstone": {
        "colors": c100,
        "texturevariants": mergeStringArray([defaultnocobbleVariants, ["gilded"]])
    },
    // End Stones
    "endstone": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "enderstone": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "flavolite": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "purpur": {
        "colors": c100,
        "texturevariants": [" ", "pillar"],
        "flags": ["--onlyBlocks"]
    },
    // Extraterrestrial Stones
    "basalt": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "cythereastone": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "rutile": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "venusstone": {
        "colors": c100,
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
    "marstone": {
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
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    "violecite": {
        "colors": c100,
        "texturevariants": defaultnocobbleVariants
    },
    // Misc
    "wool": {
        "colors": c100,
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
