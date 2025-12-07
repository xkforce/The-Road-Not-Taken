#loader crafttweaker
#priority 2000

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
    "grapplemod",
    "greenery",
    "inspirations",
    "jjmeteor",
    "libvulpes",
    "locks",
    "mechanics",
    "microblockcbe",
    "mocreatures",
    "mowziesmobs",
    "naturescompass",
    "oe",
    "plants2",
    "pogosticks",
    "potioncore",
    "primitivemobs",
    "projectred-core",
    "projectred-integration",
    "projectred-transmission",
    "pvj",
    "railsplus",
    "rebornmod",
    "rockhounding_rocks",
    "speedyhoppers",
    "sugiforest",
    "switchbow",
    "testdummy2",
    "totemexpansion",
    "zawa",
];

for mod in mods {
    if (loadedMods in mod) {
        recipes.removeByMod(mod);
    } else {
        info(`Mod *${mod}* is not loaded, skipping removal of recipes.`);
    }
}