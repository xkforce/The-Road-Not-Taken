#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createFood;
import scripts.functions.contenttweaker.creativeTab;

val preservedNonmeat as float[][string] = {
    "driedfuit" : [3.0, 0.6],
    "prunes" : [3.0, 0.6],
    "driedberries" : [3.0, 0.6],
};

for food, data in preservedNonmeat {
    val hunger as int = data[0] as int;
    val saturation as float = data[1] as float;

    var nonMeat = VanillaFactory.createItemFood(food, hunger);
    if (preservedNonmeat.keys.indexOf(food) == 0) {
        createCreativeTabWithItem(modpackID + ".preservednonmeat", nonMeat);
    }
    nonMeat.creativeTab = creativeTab;
    nonMeat.saturation = saturation;
    nonMeat.register();
}
