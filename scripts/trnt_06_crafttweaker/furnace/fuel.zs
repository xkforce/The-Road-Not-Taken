#loader crafttweaker

LOG.info("🔥 Registering furnace fuels...");

static fuelMap as string[][int]$orderly = {
    100: [
        "minecraft:paper",
        "minecraft:shield",
        "astikorcarts:plowcart",
        "astikorcarts:cargocart",
        "astikorcarts:mobcart",
        "astikorcarts:wheel",
        "pvj:cottonwood_button",
    ],
    200: [
        "contenttweaker:charcoalnugget",
        "quark:paper_wall_sakura",
    ],
    300: [
        "minecraft:book",
        "minecraft:writable_book",
        "minecraft:written_book",
        "minecraft:enchanted_book",
    ],
    400: [
        "ore:torch",
        "quark:colored_item_frame:*",
        "minecraft:item_frame",
        "contenttweaker:cokenugget",
    ],
    450: [
        "minecraft:painting",
    ],
    500: [
        "contenttweaker:graphitenugget",
    ],
    700: [
        "presents:present",
        "presents:present_empty",
    ],
    800: [
        "minecraft:map:0",
        "minecraft:map:1",
    ],
    900: [
        "quark:paper_wall",
        "quark:paper_wall_big",
    ],
    1200: [
        "minecraft:bed:*",
    ],
    1600: [
        "minecraft:map:2",
    ],
    2400: [
        "minecraft:map:3",
    ],
    3200: [
        "minecraft:map:4",
        "contenttweaker:coke",
    ],
    4000: [
        "minecraft:map:5",
        "contenttweaker:graphite",
    ],
    32000: [
        "contenttweaker:cokeblock",
    ],
    40000: [
        "contenttweaker:graphiteblock",
    ],
};

for burntime, itemList in fuelMap {
    for item in itemList {
        if (itemLoaded(item)) {
            furnace.setFuel(ingredient(item), burntime);
        } else {
            LOG.warn(`Item *${item}* not loaded; skipping furnace fuel registration for item *${item}*.`);
        }
    }
}
