#loader contenttweaker
#modloaded contenttweaker
#priority 1000

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
    "purplecarrot": [3.0, 0.6],
    "japanesesweetpotato": [2.0, 0.6]
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
