#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createFood;
import scripts.functions.contenttweaker.creativeTab;

val COOKING_MULTIPLIER as float = 1.5 as float;

val meats as float[][string] = {
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
    val rawName as string = "raw" + meat;
    val cookedName as string = "cooked" + meat;

    val rawHunger as int = data[0] as int;
    val rawSaturation as float = data[1] as float;

    val cookedHunger as int = (data[0] * COOKING_MULTIPLIER) as int;
    val cookedSaturation as float = (data[1] * COOKING_MULTIPLIER) as float;

    var rawMeat = VanillaFactory.createItemFood(rawName, rawHunger);
    if (meats.keys.indexOf(meat) == 0) {
        createCreativeTabWithItem(modpackID + ".meats", rawMeat);
    }
    rawMeat.creativeTab = creativeTab;
    rawMeat.saturation = rawSaturation;
    rawMeat.register();

    createFood(cookedName, cookedHunger, cookedSaturation); 
}

val processedMeats as float[][string] = {
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

    createFood(meat, hunger, saturation);  
}