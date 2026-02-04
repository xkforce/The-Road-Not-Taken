import classes.Variants
import classes.Utils
import net.minecraft.item.Item
import net.minecraft.item.ItemStack

content.createCreativeTab("trnt.templates", item('minecraft:paper'))

Variants.templates.each { template ->
    def name = "${template}template"
    def i = (new Item() {
        String func_77653_i(ItemStack stack) {
            return Utils.translate("trnt.variant.${template}.name", Utils.translate("trnt.item.template.name"))
        }
    }).setCreativeTab(creativeTab("trnt.templates"))
    content.registerItem(name, i)
}
