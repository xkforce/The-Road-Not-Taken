import net.minecraft.item.ItemFood
import classes.Utils
import core.Modpack

def foods = []

def fruits = Utils.readConfig("fruits.cfg")

content.createCreativeTab("trnt.fruits", item('minecraft:apple'))

fruits.each { fruit ->
    if (fruit.size() < 1 || fruit.size() > 3) return Modpack.LOGGER.warn("❌ Invalid fruit line in config file 'fruits.cfg': ${fruit}")
    def name = fruit[0]
    def food = fruit.size() > 1 ? Integer.parseInt(fruit[1]) : 3
    def saturation = fruit.size() > 2 ? Float.parseFloat(fruit[2]) : 0.6f
    def item = new ItemFood(food, saturation, false).setCreativeTab(creativeTab("trnt.fruits"))
    if (foods.indexOf(name) != -1) return Modpack.LOGGER.warn("❌ Duplicate food value in config file 'fruits.cfg': ${food}")
    foods.add(name)
    Modpack.registerItem(name, item)
}
