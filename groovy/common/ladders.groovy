import classes.Utils
import core.Modpack

Modpack.LOGGER.info("🪜 Creating ladder and stick recipes...")

def wood = Utils.readConfig("blocks/wood.cfg")

wood.each { rail ->
    if (rail.size() != 2) return Modpack.LOGGER.warn("❌ Invalid wood line in config file 'wood.cfg': ${rail}")
    def stick1 = "${rail[0]}stick"
    wood.each { rung ->
        def stick2 = "${rung[0]}stick"
        def ladder = "${rail[0]}rail${rung[0]}rungladder"
        crafting.shapedBuilder()
            .name(resource("trnt:ladder/${ladder}"))
            .output(item("trnt:${ladder}"))
            .shape("s s", "sts", "s s")
            .key('s', item("trnt:${stick1}"))
            .key('t', item("trnt:${stick2}"))
            .register()
    }
    def plank = rail[1]
    if (isLoaded(plank.split(":")[0])) {
        crafting.shapedBuilder()
            .name(resource("trnt:stick/${stick1}"))
            .output(item("trnt:${stick1}"))
            .shape("x", "x")
            .key('x', item(plank))
            .register()
    }
    ore_dict.add("stickWood", item("trnt:${stick1}"))
}
