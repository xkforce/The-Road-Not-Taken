#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;

static preservedNonmeat as float[][string] = {
    "driedfuit" : [3.0, 0.6],
    "prunes" : [3.0, 0.6],
    "driedberries" : [3.0, 0.6],
};

for food, data in preservedNonmeat {
    val hunger as int = data[0] as int;
    val saturation as float = data[1] as float;

    var nonMeat = VanillaFactory.createItemFood(food, hunger);
    if (preservedNonmeat.keys.indexOf(food) == 0) {
        COT_UTILS.createCreativeTabWithItem(`${MODPACK.id}.preservednonmeat`, nonMeat);
    }
    nonMeat.creativeTab = COT_UTILS.creativeTab;
    nonMeat.saturation = saturation;
    nonMeat.register();
    ITEM_COUNTER.increment();
}
COT_UTILS.resetCreativeTab();
