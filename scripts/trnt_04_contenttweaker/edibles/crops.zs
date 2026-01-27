#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;

// Food items default to 0.6 saturation if not specified otherwise
// https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/ItemFood/

static overrideCrops as float[][string] = {
    // foodItemName: [hunger, saturation]
    "purplecarrot": [3.0, 0.6],
    "japanesesweetpotato": [2.0, 0.6]
};

for crop in EDIBLE_CROPS {
    val hunger as int = ((overrideCrops has crop) ? overrideCrops[crop][0] : 3) as int;
    val saturation as float = ((overrideCrops has crop) ? overrideCrops[crop][1] : 0.6) as float;
    val foodItem as ItemFood = VanillaFactory.createItemFood(crop, hunger);
    if (EDIBLE_CROPS.indexOf(crop) == 0) {
        COT_UTILS.createCreativeTabWithItem(`${MODPACK.id}.ediblecrops`, foodItem);
    }
    foodItem.saturation = saturation;
    foodItem.creativeTab = COT_UTILS.creativeTab;
    foodItem.register();
    ITEM_COUNTER.increment();
}
COT_UTILS.resetCreativeTab();
