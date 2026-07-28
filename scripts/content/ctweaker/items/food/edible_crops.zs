#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createFood;
import scripts.functions.contenttweaker.creativeTab;
import scripts.variables.crops.edible_crops;

// Food items default to 0.6 saturation if not specified otherwise
// https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/ItemFood/

val overrideCrops as float[][string] = {
    // foodItemName: [hunger, saturation]
    "alfalfa": [3.0, 0.6],
    "arugala": [3.0, 0.6],
    "blackbeet": [3.0, 0.6],
    "bullsbloodbeet": [3.0, 0.6],
    "candystripebeet": [3.0, 0.6],
    "orangebeet": [3.0, 0.6],
    "purplebeet": [3.0, 0.6],
    "whitebeet": [3.0, 0.6],
    "yellowbeet": [3.0, 0.6],
    "blackbokchoy": [3.0, 0.6],
    "greenbokchoy": [3.0, 0.6],
    "orangebokchoy": [3.0, 0.6],
    "purplebokchoy": [3.0, 0.6],
    "redbokchoy": [3.0, 0.6],
    "yellowbokchoy": [3.0, 0.6],
    "whitebokchoy": [3.0, 0.6],
    "bluegreenbroccoli": [3.0, 0.6],
    "greenbroccoli": [3.0, 0.6],
    "lavenderbroccoli": [3.0, 0.6],
    "orangebroccoli": [3.0, 0.6],
    "purplebroccoli": [3.0, 0.6],
    "redbroccoli": [3.0, 0.6],
    "whitebroccoli": [3.0, 0.6],
    "yellowbroccoli": [3.0, 0.6],
    "blackbrusselssprouts": [3.0, 0.6],
    "greenbrusselssprouts": [3.0, 0.6],
    "orangebrusselssprouts": [3.0, 0.6],
    "purplebrusselssprouts": [3.0, 0.6],
    "redbrusselssprouts": [3.0, 0.6],
    "yellowbrusselssprouts": [3.0, 0.6],
    "whitebrusselssprouts": [3.0, 0.6],
    "blackcabbage": [3.0, 0.6],
    "bluegreencabbage": [3.0, 0.6],
    "greencabbage": [3.0, 0.6],
    "orangecabbage": [3.0, 0.6],
    "pointedcabbage": [3.0, 0.6],
    "purplecabbage": [3.0, 0.6],
    "redcabbage": [3.0, 0.6],
    "yellowcabbage": [3.0, 0.6],
    "whitecabbage": [3.0, 0.6],
    "blackcauliflower": [3.0, 0.6],
    "broccoflower": [3.0, 0.6],
    "lavendercauliflower": [3.0, 0.6],
    "orangecauliflower": [3.0, 0.6],
    "purplecauliflower": [3.0, 0.6],
    "redcauliflower": [3.0, 0.6],
    "romanescocauliflower": [3.0, 0.6],
    "whitecauliflower": [3.0, 0.6],
    "yellowcauliflower": [3.0, 0.6],
    "celeriac": [3.0, 0.6],
    "greencelery": [3.0, 0.6],
    "pinkcelery": [3.0, 0.6],
    "purplecelery": [3.0, 0.6],
    "redcelery": [3.0, 0.6],
    "whitecelery": [3.0, 0.6],
    "yellowcelery": [3.0, 0.6],
    "greenchard": [3.0, 0.6],
    "orangechard": [3.0, 0.6],
    "redchard": [3.0, 0.6],
    "yellowchard": [3.0, 0.6],
    "chives": [3.0, 0.6],
    "cilantro": [3.0, 0.6],
    "bluecollards": [3.0, 0.6],
    "greencollards": [3.0, 0.6],
    "purplecollards": [3.0, 0.6],
    "redcollards": [3.0, 0.6],
    "yellowcollards": [3.0, 0.6],
    "blackendive": [3.0, 0.6],
    "greenendive": [3.0, 0.6],
    "orangeendive": [3.0, 0.6],
    "pinkendive": [3.0, 0.6],
    "purpleendive": [3.0, 0.6],
    "redendive": [3.0, 0.6],
    "whiteendive": [3.0, 0.6],
    "yellowendive": [3.0, 0.6],
    "blackkale": [3.0, 0.6],
    "greenkale": [3.0, 0.6],
    "redkale": [3.0, 0.6],
    "purplegarlic": [3.0, 0.6],
    "whitegarlic": [3.0, 0.6],
    "jicama": [3.0, 0.6],
    "blackkholrabi": [3.0, 0.6],
    "greenkholrabi": [3.0, 0.6],
    "orangekholrabi": [3.0, 0.6],
    "purplekholrabi": [3.0, 0.6],
    "redkholrabi": [3.0, 0.6],
    "whitekholrabi": [3.0, 0.6],
    "yellowkholrabi": [3.0, 0.6],
    "fennel": [3.0, 0.6],
    "leek": [3.0, 0.6],
    "greenlettuce": [3.0, 0.6],
    "redlettuce": [3.0, 0.6],
    "okra": [3.0, 0.6],
    "redonion": [3.0, 0.6],
    "whiteonion": [3.0, 0.6],
    "yellowonion": [3.0, 0.6],
    "parsley": [3.0, 0.6],
    "blackradish": [3.0, 0.6],
    "daikonradish": [3.0, 0.6],
    "greenradish": [3.0, 0.6],
    "orangeradish": [3.0, 0.6],
    "pinkradish": [3.0, 0.6],
    "purpleradish": [3.0, 0.6],
    "redradish": [3.0, 0.6],
    "whiteradish": [3.0, 0.6],
    "yellowradish": [3.0, 0.6],
    "rutabaga": [3.0, 0.6],
    "shallot": [3.0, 0.6],
    "greenspinach": [3.0, 0.6],
    "redspinach": [3.0, 0.6],
    "blackturnip": [3.0, 0.6],
    "orangeturnip": [3.0, 0.6],
    "pinkturnip": [3.0, 0.6],
    "purpleturnip": [3.0, 0.6],
    "redturnip": [3.0, 0.6],
    "whiteturnip": [3.0, 0.6],
    "yellowturnip": [3.0, 0.6],
};

for crop in edible_crops {
    val hunger as int = ((overrideCrops has crop) ? overrideCrops[crop][0] : 3) as int;
    val saturation as float = ((overrideCrops has crop) ? overrideCrops[crop][1] : 0.6) as float;
    val foodItem = VanillaFactory.createItemFood(crop, hunger);
    if (edible_crops.indexOf(crop) == 0) {
        createCreativeTabWithItem(modpackID + ".ediblecrops", foodItem);
    }
    foodItem.saturation = saturation;
    foodItem.creativeTab = creativeTab;
    foodItem.register();
}
