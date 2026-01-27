#loader setup
#priority 1

zenClass Variants {
    zenConstructor() {
        LOG.info(`🥏 Loading variants...`);
    }

    val none as string[] = [" "];
    val brick as string[] = ["brick", "chiseledbrick", "cobblestone", "debossed", "polished", "shortbrick"];
    val cracked as string[] = ["crackedbrick", "crackedshortbrick"];

    val default as string[] = StringArray.merge([none, brick, cracked]);

    val mossy as string[] = StringArray.prefix(brick, "mossy");
    val brownlichen as string[] = StringArray.prefix(brick, "brownlichen");
    val redlichen as string[] = StringArray.prefix(brick, "redlichen");
    val orangelichen as string[] = StringArray.prefix(brick, "orangelichen");
    val yellowlichen as string[] = StringArray.prefix(brick, "yellowlichen");

    val overworld as string[] = StringArray.merge([default, mossy]);
    val defaultnocobble as string[] = StringArray.filter(default, [["cobblestone"]]);
    val sandstone as string[] = [
        "archerleft", "archerright", "armsdown", "armsup", "axeleft",
        "axeright", "bladeleft", "bladeright", "brokenheart", "carvedcreeper",
        "carvedskeleton", "carvedzombie", "chestleft", "chestright", "chibicreeperleft",
        "chibicreeperright", "cut", "dogleft", "dogright", "explorerleft", "explorerright",
        "fire", "fishingrodleft", "fishingrodright", "friend", "ghast", "guster", "heart",
        "miner", "mourner", "potion", "prize", "sheaf", "shelter", "slimeleft", "slimeright",
        "swirlcb", "swirlccb", "swirlcct", "swirlct", "turtleleft", "turtleright", "waveleft",
        "waveright", "wither"
    ];

    val templates as string[] = StringArray.merge([brick, sandstone, ["tile", "blank", "grid", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "pillar"]]);
}

global VARIANTS as Variants = Variants();
