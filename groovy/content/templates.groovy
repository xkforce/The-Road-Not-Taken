import classes.Variants
import classes.Utils
import core.Modpack

Modpack.LOGGER.info("🧩 Creating templates...")

Variants.TEMPLATES.each { template ->
    def name = "${template}template"
    def i = (new Item() {
        String func_77653_i(ItemStack stack) {
            return Utils.translate("trnt.variant.${template}.name", Utils.translate("trnt.item.template.name"))
        }
    }).setCreativeTab(creativeTab("trnt.templates"))
    Modpack.registerItem(name, i)
}
