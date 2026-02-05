import classes.Variables

def planks = [
    "minecraft:planks:4",
    "pvj:planks_baobab",
    "minecraft:planks:2",
    "plants2:planks:2",
    "plants2:planks:3",
    "biomesoplenty:planks_0:1",
    "pvj:planks_cottonwood",
    "minecraft:planks:5",
    "biomesoplenty:planks_0:14",
    "biomesoplenty:planks_0:15",
    "biomesoplenty:planks_0:3",
    "plants2:planks:4",
    "biomesoplenty:planks_0:12",
    "minecraft:planks:3",
    "pvj:planks_juniper",
    "biomesoplenty:planks_0:13",
    "biomesoplenty:planks_0:6",
    "pvj:planks_maple",
    "minecraft:planks",
    "biomesoplenty:planks_0:10",
    "biomesoplenty:planks_0:8",
    "sugiforest:sugi_planks",
    "biomesoplenty:planks_0:2",
    "biomesoplenty:planks_0:9",
];

Variables.WOOD_TYPES.each { rail ->
    def stick1 = "${rail}stick"
    Variables.WOOD_TYPES.each { rung ->
        def stick2 = "${rung}stick"
        def ladder = "${rail}rail${rung}rungladder"
        crafting.shapedBuilder()
            .name(resource("trnt:ladder/${ladder}"))
            .output(item("trnt:${ladder}"))
            .shape("s s", "sts", "s s")
            .key('s', item("trnt:${stick1}"))
            .key('t', item("trnt:${stick2}"))
            .register()
    }
    def plank = planks[Variables.WOOD_TYPES.indexOf(rail)]
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
