#loader preinit contenttweaker crafttweaker
#priority 10100

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

static mossyVariants as string[] = [
    "mossybrick",
    "mossychiseledbrick",
    "mossydebossed",
    "mossycobblestone",
    "mossypolished",
    "mossyshortbrick",
];

static lichenVariants as string[] = [
    "lichenbrown",
    "lichenorange",
    "lichenred",
    "lichenyellow",
];

static OverworldVariants as string[] = mergeStringArray([defaultVariants, mossyVariants, lichenVariants]);

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
        "texturevariants": [" ", "fourxfour", "brick", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "polished"]
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
        "texturevariants": [" ", "chiseled", "pillar", "polished"],
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
    // Rockhounding Rocks
    "basanite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "bluejasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "chrysocolla": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "gabbro": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "jet": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "labradorite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "luxulyanite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "portoro": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "slate": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "arkose": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "bronzite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "browncarnelian": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "brownporphyry": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "ignimbrite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "larimar": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "laterite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "pietersite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "scoria": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "amazonite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "dacite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "grayporphyry": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "graytrachyte": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "graytravertine": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "migmatite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "pumice": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "spiderwebjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "zebrajasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "chrysoprase": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "dunite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "glauconite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "greenjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "greenporphyry": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "jadeite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "kakortokite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "rainforestjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "rhodochrosite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "serpentinite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "zoisite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "aplite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "charoite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "dumortierite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "jasperoid": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "pinkporphyry": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "pinktrachyte": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "pinktravertine": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "purpleporphyry": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "redcarnelian": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "rhodonite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "stichtite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "sugilite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "alabaster": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "jaspilite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "mookaitejasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "noreenajasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "porcelainjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "redjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "redporphyry": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "redtrachyte": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "rosered": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "sunstone": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "dalmatianjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "diatomite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "felsite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "howlite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "mudstone": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "oceanjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "yellowjasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "yellowporphyry": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "yellowtrachyte": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "actinolite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "ammolite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "apatite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "blueschist": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "breccia": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "eclogite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "grayschist": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "guadalupejasper": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "oolite": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "treeagate": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "umber": {
        "colors": none,
        "texturevariants": OverworldVariants
    },
    "wonderstone": {
        "colors": none,
        "texturevariants": OverworldVariants
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
