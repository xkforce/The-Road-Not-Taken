import classes.Utils
import core.Modpack
import net.minecraft.block.BlockMelon
import net.minecraft.block.BlockPumpkin
import surreal.contentcreator.common.block.generic.BlockGeneric

Modpack.LOGGER.info("🌱 Creating crops...")

def food = Utils.readConfig("food/crops.cfg").collect { it[0] }

def crops = Utils.readConfig("crops/crops.cfg")

crops.each { crop ->
    if (crop.size() != 1) return Modpack.LOGGER.warn("❌ Invalid crop line in config file 'crops.cfg': ${crop}")
    def name = crop[0]

    if (!food.contains(name)) {
        Modpack.createItem(name, "trnt.crops")
    }

    def b = BlockGeneric.createCrop(name, "trnt:${name}".toString(), 0, 1, 1)
    b.block.setCreativeTab(creativeTab("trnt.crops"))
    b.register()
    Modpack.BLOCK_COUNTER.increment()
}

def tallCrops = Utils.readConfig("crops/tall_crops.cfg")

tallCrops.each { tallCrop ->
    if (tallCrop.size() != 1) return Modpack.LOGGER.warn("❌ Invalid tall crop line in config file 'tall_crops.cfg': ${tallCrop}")
    def name = tallCrop[0]

    if (!food.contains(name)) {
        Modpack.createItem(name, "trnt.crops")
    }

    def b = BlockGeneric.createCropTallRestrictedByOreDictionary(name, "trnt:${name}".toString(), "ore:fence", 0, 1, 3)
    b.block.setCreativeTab(creativeTab("trnt.crops"))
    b.register()
    Modpack.BLOCK_COUNTER.increment()
}

def vineCrops = Utils.readConfig("crops/vine_crops.cfg")

vineCrops.each { vineCrop ->
    if (vineCrop.size() != 1) return Modpack.LOGGER.warn("❌ Invalid vine crop line in config file 'vine_crops.cfg': ${vineCrop}")
    def name = vineCrop[0]

    if (!food.contains(name)) {
        Modpack.createItem(name, "trnt.crops")
    }

    def b = BlockGeneric.createCropRestrictedByBlock(name, "trnt:${name}".toString(), "minecraft:string", 0, 0, 1, 3)
    b.block.setCreativeTab(creativeTab("trnt.crops"))
    b.register()
    Modpack.BLOCK_COUNTER.increment()
}

def pumpkins = Utils.readConfig("crops/pumpkin.cfg")

pumpkins.each { pumpkin ->
    if (pumpkin.size() != 1) return Modpack.LOGGER.warn("❌ Invalid pumpkin line in config file 'pumpkin.cfg': ${pumpkin}")
    def name = pumpkin[0]

    def b = (new BlockPumpkin()).setCreativeTab(creativeTab("trnt.crops"))
    Modpack.registerBlock(name, b)

    def stem = BlockGeneric.createStem(name, "trnt:${name}".toString(), 0)
    stem.block.setCreativeTab(creativeTab("trnt.crops"))
    stem.register()
    Modpack.BLOCK_COUNTER.increment()
}

def melons = Utils.readConfig("crops/melon.cfg")

melons.each { melon ->
    if (melon.size() != 1) return Modpack.LOGGER.warn("❌ Invalid melon line in config file 'melon.cfg': ${melon}")
    def name = "${melon[0]}block"

    def b = (new BlockMelon() {
        public Item getItemDropped(IBlockState state, Random rand, int fortune) {
            return ItemUtils.item("trnt:${melon[0]}")
        }
    }).setCreativeTab(creativeTab("trnt.crops"))
    Modpack.registerBlock(name, b)

    def stem = BlockGeneric.createStem(name, "trnt:${name}".toString(), 0)
    stem.block.setCreativeTab(creativeTab("trnt.crops"))
    stem.register()
    Modpack.BLOCK_COUNTER.increment()
}
