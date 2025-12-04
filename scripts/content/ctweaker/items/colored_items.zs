#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

import scripts.variables.misc.oreColors;

for color in colors {
    val c as string = color.toLowerCase();
    if (colors.indexOf(color) == 0) {
        createCreativeTabAndItem(c + "dyenugget", modpackID + ".colored");
    } else {
        createItem(c + "dyenugget");
    }
    createItem(c + "sparkler");
    createItem(c + "feather");
}