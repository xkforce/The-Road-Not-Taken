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

for crop in edible_crops {
    val foodItem = VanillaFactory.createItemFood(crop, 3);
    if (edible_crops.indexOf(crop) == 0) {
        createCreativeTabWithItem(modpackID + ".ediblecrops", foodItem);
    }
    foodItem.creativeTab = creativeTab;
    foodItem.register();
}