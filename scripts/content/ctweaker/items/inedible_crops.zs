#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

import scripts.variables.crops.inedible_crops;

for crop in inedible_crops {
    if (inedible_crops.indexOf(crop) == 0) {
        createCreativeTabAndItem(crop, modpackID + ".inediblecrops");
    } else {
        createItem(crop);
    }
}