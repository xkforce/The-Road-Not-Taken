#loader crafttweaker
#priority 10

val mods as string[] = [
    "advancedrocketry",
    "a_lot_of_records",
    "astikorcarts",
    "backstab",
    "betteranimalsplus",
    "biomesoplenty",
    "chesttransporter",
    "colorfulslimes",
    "comforts",
    "craftingautomat",
    "creatures",
    "cyclicmagic",
    "deeperdepths",
    "doubleslabs",
    "enderstorage",
    "erebus",
    "exoticbirds",
    "ferdinandsflowers",
    "futuremc",
    "greenery",
    "inspirations",
    "jjmeteor",
    "libvulpes",
    "locks",
    "mocreatures",
    "mowziesmobs",
    "naturescompass",
    "oe",
    "plants2",
    "pogosticks",
    "potioncore",
    "primitivemobs",
    "pvj",
    "railsplus",
    "rebornmod",
    "rockhounding_rocks",
    "switchbow",
    "testdummy",
    "zawa",
];

for mod in mods {
    if (loadedMods in mod) {
        recipes.removeByMod(mod);
    } else {
        log.info(`Mod *${mod}* is not loaded, skipping removal of recipes.`);
    }
}
