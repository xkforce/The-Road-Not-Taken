#loader preinit contenttweaker crafttweaker
#priority 1011

static none as string[] = [" "];

static defaultVariants as string[] = mergeStringArray([none, [
    "brick",
    "chiseledbrick",
    "cobblestone",
    "crackedbrick",
    "crackedshortbrick",
    "debossed",
    "polished",
    "shortbrick",
]]);

static mossyVariants as string[] = [
    "mossybrick",
    "mossychiseledbrick",
    "mossydebossed",
    "mossycobblestone",
    "mossypolished",
    "mossyshortbrick",
];

static OverworldVariants as string[] = mergeStringArray([defaultVariants, mossyVariants]);

static defaultnocobbleVariants as string[] = filterStringArray(defaultVariants, [["cobblestone"]]);

static sandstoneVariants as string[] = [
    "archerleft", "archerright", "armsdown", "armsup", "axeleft",
    "axeright", "bladeleft", "bladeright", "brokenheart", "carvedcreeper",
    "carvedskeleton", "carvedzombie", "chestleft", "chestright", "chibicreeperleft",
    "chibicreeperright", "cut", "dogleft", "dogright", "explorerleft", "explorerright",
    "fire", "fishingrodleft", "fishingrodright", "friend", "ghast", "guster", "heart",
    "miner", "mourner", "potion", "prize", "sheaf", "shelter", "slimeleft", "slimeright",
    "swirlcb", "swirlccb", "swirlcct", "swirlct", "turtleleft", "turtleright", "waveleft",
    "waveright", "wither"
];
