import classes.Utils
import core.Modpack

Modpack.LOGGER.info("🪨 Creating blocks...")

def ambers = Utils.readConfig("blocks/amber.cfg")

ambers.each { amber ->
    if (amber.size() != 1) return Modpack.LOGGER.warn("❌ Invalid amber line in config file 'amber.cfg': ${amber}")
    def name = "${amber[0]}inamber"

    content.createBlock(name)
        .setHardness(1.5f)
        .setResistance(6.0f)
        .setCreativeTab(creativeTab("decorations"))
        .register()
    Modpack.BLOCK_COUNTER.increment()
}

def storageblocks = Utils.readConfig("food/misc.cfg")

storageblocks.each { storageblock ->
    if (storageblock.size() < 1) return Modpack.LOGGER.warn("❌ Invalid storageblock line in config file 'misc.cfg': ${storageblock}")
    def name = "${storageblock[0]}block"

    content.createBlock(name)
        .setCreativeTab(creativeTab("trnt.miscfoods"))
        .register()
    Modpack.BLOCK_COUNTER.increment()
}
