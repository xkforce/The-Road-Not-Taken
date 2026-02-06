class Variants {
    final static def NONE = [" "]
    final static def BRICK = ["brick", "chiseledbrick", "cobblestone", "debossed", "polished", "shortbrick"]
    final static def CRACKED = ["crackedbrick", "crackedshortbrick"]

    final static def DEFAULT_BLOCKS = NONE + BRICK + CRACKED

    final static def MOSSY = BRICK.collect { "mossy" + it }
    final static def BROWN_LICHEN = BRICK.collect { "brownlichen" + it }
    final static def RED_LICHEN = BRICK.collect { "redlichen" + it }
    final static def ORANGE_LICHEN = BRICK.collect { "orangelichen" + it }
    final static def YELLOW_LICHEN = BRICK.collect { "yellowlichen" + it }

    final static def OVERWORLD = DEFAULT_BLOCKS + MOSSY
    final static def DEFAULT_NO_COBBLE = DEFAULT_BLOCKS.findAll { it != "cobblestone" }
    final static def BRICK_NO_COBBLE = BRICK.findAll { it != "cobblestone" }
    final static def SANDSTONE = [
        "archerleft", "archerright", "armsdown", "armsup", "axeleft",
        "axeright", "bladeleft", "bladeright", "brokenheart", "carvedcreeper",
        "carvedskeleton", "carvedzombie", "chestleft", "chestright", "chibicreeperleft",
        "chibicreeperright", "cut", "dogleft", "dogright", "explorerleft", "explorerright",
        "fire", "fishingrodleft", "fishingrodright", "friend", "ghast", "guster", "heart",
        "miner", "mourner", "potion", "prize", "sheaf", "shelter", "slimeleft", "slimeright",
        "swirlcb", "swirlccb", "swirlcct", "swirlct", "turtleleft", "turtleright", "waveleft",
        "waveright", "wither"
    ]

    final static def TEMPLATES = BRICK_NO_COBBLE + SANDSTONE + ["tile", "blank", "grid", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "pillar"]
}
