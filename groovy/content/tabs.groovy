import classes.Utils
import core.Modpack

Modpack.LOGGER.info("📁 Creating creative tabs...")

def tabNames = Utils.readConfig("creative_tabs.cfg")

tabNames.each { tabName ->
    if (tabName.size() != 2) return Modpack.LOGGER.warn("❌ Invalid creative tab line in config file 'creative_tabs.cfg': ${tabName}")
    content.createCreativeTab("trnt.${tabName[0]}", item(tabName[1]))
}
