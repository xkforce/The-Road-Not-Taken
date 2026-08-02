#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createFood;
import scripts.functions.contenttweaker.creativeTab;

// Food items default to 0.6 saturation if not specified foragedwise
// https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/ItemFood/

val foragedfoods as string[] = [
    "kudzuroot", 
    "japaneseladybellroot", 
];

val overrideforagedfoods as float[][string] = {
    // foodItemName: [hunger, saturation]
    "kudzuroot": [3.0, 0.6],
    "japaneseladybellroot": [3.0, 0.6],
};

for foragedfood in foragedfoods {
    val hunger as int = ((overrideforagedfoods has foragedfood) ? overrideforagedfoods[foragedfood][0] : 3) as int;
    val saturation as float = ((overrideforagedfoods has foragedfood) ? overrideforagedfoods[foragedfood][1] : 0.6) as float;
    val foodItem = VanillaFactory.createItemFood(foragedfood, hunger);
    foodItem.register();
}
