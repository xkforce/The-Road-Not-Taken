class Variants {
    def static none = [" "]
    def static brick = ["brick", "chiseledbrick", "cobblestone", "debossed", "polished", "shortbrick"]
    def static cracked = ["crackedbrick", "crackedshortbrick"]

    def static defaultBlocks = none + brick + cracked

    def static mossy = brick.collect { "mossy" + it }
    def static brownlichen = brick.collect { "brownlichen" + it }
    def static redlichen = brick.collect { "redlichen" + it }
    def static orangelichen = brick.collect { "orangelichen" + it }
    def static yellowlichen = brick.collect { "yellowlichen" + it }

    def static overworld = defaultBlocks + mossy
    def static defaultnocobble = defaultBlocks.findAll { it != "cobblestone" }
    def static brickNoCobble = brick.findAll { it != "cobblestone" }
    def static sandstone = [
        "archerleft", "archerright", "armsdown", "armsup", "axeleft",
        "axeright", "bladeleft", "bladeright", "brokenheart", "carvedcreeper",
        "carvedskeleton", "carvedzombie", "chestleft", "chestright", "chibicreeperleft",
        "chibicreeperright", "cut", "dogleft", "dogright", "explorerleft", "explorerright",
        "fire", "fishingrodleft", "fishingrodright", "friend", "ghast", "guster", "heart",
        "miner", "mourner", "potion", "prize", "sheaf", "shelter", "slimeleft", "slimeright",
        "swirlcb", "swirlccb", "swirlcct", "swirlct", "turtleleft", "turtleright", "waveleft",
        "waveright", "wither"
    ]

    def static templates = brickNoCobble + sandstone + ["tile", "blank", "grid", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "pillar"]
}
