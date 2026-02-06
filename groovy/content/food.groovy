import net.minecraft.item.ItemFood
import classes.Utils
import core.Modpack

Modpack.LOGGER.info("🍎 Creating food items...")

def fruits = Utils.readConfig("food/fruits.cfg")

fruits.each { fruit ->
    if (fruit.size() < 1 || fruit.size() > 3) return Modpack.LOGGER.warn("❌ Invalid fruit line in config file 'fruits.cfg': ${fruit}")

    def name = fruit[0]
    def food = fruit.size() > 1 ? Integer.parseInt(fruit[1]) : Modpack.CFG.getInt("trnt.default", "food_hunger")
    def saturation = fruit.size() > 2 ? Float.parseFloat(fruit[2]) : Modpack.CFG.getFloat("trnt.default", "food_saturation")

    def item = (new ItemFood((int) food, (float) saturation, false)).setCreativeTab(creativeTab("trnt.fruits"))
    Modpack.registerItem(name, item)
}

def crops = Utils.readConfig("food/crops.cfg")

crops.each { crop ->
    if (crop.size() < 1 || crop.size() > 3) return Modpack.LOGGER.warn("❌ Invalid crop line in config file 'crops.cfg': ${crop}")

    def name = crop[0]
    def food = crop.size() > 1 ? Integer.parseInt(crop[1]) : Modpack.CFG.getInt("trnt.default", "food_hunger")
    def saturation = crop.size() > 2 ? Float.parseFloat(crop[2]) : Modpack.CFG.getFloat("trnt.default", "food_saturation")

    def item = (new ItemFood((int) food, (float) saturation, false)).setCreativeTab(creativeTab("trnt.crops"))
    Modpack.registerItem(name, item)
}

def meats = Utils.readConfig("food/meat.cfg")

meats.each { meat ->
    if (meat.size() < 1 || meat.size() > 5) return Modpack.LOGGER.warn("❌ Invalid meat line in config file 'meat.cfg': ${meat}")

    def name = meat[0]
    def food = meat.size() > 1 ? Integer.parseInt(meat[1]) : Modpack.CFG.getInt("trnt.default", "food_hunger")
    def saturation = meat.size() > 2 ? Float.parseFloat(meat[2]) : Modpack.CFG.getFloat("trnt.default", "food_saturation")
    def cookedFood = meat.size() > 3 ? Integer.parseInt(meat[3]) : food * Modpack.CFG.getFloat("trnt.default", "smelting_multiplier")
    def cookedSaturation = meat.size() > 4 ? Float.parseFloat(meat[4]) : saturation * Modpack.CFG.getFloat("trnt.default", "smelting_multiplier")

    def raw = (new ItemFood((int) food, (float) saturation, false)).setCreativeTab(creativeTab("trnt.meats"))
    Modpack.registerItem("raw_${name}", raw)

    def cooked = (new ItemFood((int) cookedFood, (float) cookedSaturation, false)).setCreativeTab(creativeTab("trnt.meats"))
    Modpack.registerItem("cooked_${name}", cooked)
}

def miscs = Utils.readConfig("food/misc.cfg")

miscs.each { misc ->
    if (misc.size() < 1 || misc.size() > 3) return Modpack.LOGGER.warn("❌ Invalid misc food line in config file 'misc.cfg': ${misc}")

    def name = misc[0]
    def food = misc.size() > 1 ? Integer.parseInt(misc[1]) : Modpack.CFG.getInt("trnt.default", "food_hunger")
    def saturation = misc.size() > 2 ? Float.parseFloat(misc[2]) : Modpack.CFG.getFloat("trnt.default", "food_saturation")

    def item = (new ItemFood((int) food, (float) saturation, false)).setCreativeTab(creativeTab("trnt.miscfoods"))
    Modpack.registerItem(name, item)
}

def melons = Utils.readConfig("crops/melon.cfg")

melons.each { melon ->
    if (melon.size() != 1) return Modpack.LOGGER.warn("❌ Invalid melon line in config file 'melon.cfg': ${melon}")
    def name = melon[0]

    def item = (new ItemFood(2, 0.3f, false)).setCreativeTab(creativeTab("trnt.fruits"))
    Modpack.registerItem(name, item)
}
