import classes.ItemUtils
import classes.Utils
import core.Modpack

Modpack.LOGGER.info("🥩 Creating food recipes...")

def meats = Utils.readConfig("food/meat.cfg").collect { it[0] }

meats.each { meat ->
    if (ItemUtils.itemLoaded("trnt:cooked_${meat}") && ItemUtils.itemLoaded("trnt:raw_${meat}")) {
        furnace.recipeBuilder()
            .input(item("trnt:raw_${meat}"))
            .output(item("trnt:cooked_${meat}"))
            .experience(0.1f)
            .register()
    } else {
        Modpack.LOGGER.warn("❌ Missing raw or cooked meat for ${meat}")
    }
}

def miscs = Utils.readConfig("food/misc.cfg").collect { it[0] }

miscs.each { misc ->
    if (ItemUtils.itemLoaded("trnt:${misc}") && ItemUtils.itemLoaded("trnt:${misc}block")) {
        crafting.shapedBuilder()
            .name(resource("trnt:foodstorage/${misc}block"))
            .output(item("trnt:${misc}block"))
            .shape("xxx", "xxx", "xxx")
            .key('x', item("trnt:${misc}"))
            .register()
        crafting.shapelessBuilder()
            .name(resource("trnt:foodstorage/${misc}"))
            .output(item("trnt:${misc}") * 9)
            .input(item("trnt:${misc}block"))
            .register()
    } else {
        Modpack.LOGGER.warn("❌ Missing misc item for ${misc}")
    }
}
