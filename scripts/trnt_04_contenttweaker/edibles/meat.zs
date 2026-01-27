#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;

static COOKING_MULTIPLIER as float = 1.5 as float;

static meats as float[][string] = {
    "dottyback" : [3.0, 0.6],
    "woodpecker" : [3.0, 0.6],
    "toucan" : [3.0, 0.6],
    "bluejay" : [3.0, 0.6],
    "roadrunner" : [3.0, 0.6],
    "heron" : [3.0, 0.6],
    "peafowl" : [3.0, 0.6],
    "cardinal" : [3.0, 0.6],
    "ostrich" : [3.0, 0.6],
    "finch" : [3.0, 0.6],
    "cassowary" : [3.0, 0.6],
    "budgerigar" : [3.0, 0.6],
    "kiwi" : [3.0, 0.6],
    "seagull" : [3.0, 0.6],
    "pigeon" : [3.0, 0.6],
    "robin" : [3.0, 0.6],
    "kingfisher" : [3.0, 0.6],
    "kookaburra" : [3.0, 0.6],
    "owl" : [3.0, 0.6],
    "crane" : [3.0, 0.6],
    "swan" : [3.0, 0.6],
    "flamingo" : [3.0, 0.6],
    "vulture" : [3.0, 0.6],
    "penguin" : [3.0, 0.6],
    "pelican" : [3.0, 0.6],
    "lyrebird" : [3.0, 0.6],
    "booby" : [3.0, 0.6],
    "magpie" : [3.0, 0.6],
    "sloth" : [3.0, 0.6],
    "tasmaniandevil" : [3.0, 0.6],
    "tamarin" : [3.0, 0.6],
};

for meat, data in meats {
    val rawName as string = `raw${meat}`;
    val cookedName as string = `cooked${meat}`;

    val rawHunger as int = data[0] as int;
    val rawSaturation as float = data[1] as float;

    val cookedHunger as int = (data[0] * COOKING_MULTIPLIER) as int;
    val cookedSaturation as float = (data[1] * COOKING_MULTIPLIER) as float;

    var rawMeat as ItemFood = VanillaFactory.createItemFood(rawName, rawHunger);
    if (meats.keys.indexOf(meat) == 0) {
        COT_UTILS.createCreativeTabWithItem(`${MODPACK.id}.meats`, rawMeat);
    }
    rawMeat.creativeTab = COT_UTILS.creativeTab;
    rawMeat.saturation = rawSaturation;
    rawMeat.register();

    COT_UTILS.createFood(cookedName, cookedHunger, cookedSaturation);
    ITEM_COUNTER.add(2);
}

static processedMeats as float[][string] = {
    "jerky" : [3.0, 0.6],
    "bacon" : [3.0, 0.6],
    "saltedfish" : [3.0, 0.6],
    "smokedsalmon" : [3.0, 0.6],
    "smokedfish" : [3.0, 0.6],
    "pemmican" : [3.0, 0.6],
};

for meat, data in processedMeats {
    val hunger as int = data[0] as int;
    val saturation as float = data[1] as float;

    COT_UTILS.createFood(meat, hunger, saturation);
    ITEM_COUNTER.increment();
}
COT_UTILS.resetCreativeTab();
