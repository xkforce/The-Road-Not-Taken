#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

val colors as string[] = [
    "white", "orange", "magenta", "lightblue", "yellow", "lime", "pink", "gray",
    "lightgray", "cyan", "purple", "blue", "brown", "green", "red", "black",
];

for color in colors {
    if (colors.indexOf(color) == 0) {
        createCreativeTabAndItem(color + "dyenugget", modpackID + ".colored");
    } else {
        createItem(color + "dyenugget");
    }
    createItem(color + "sparkler");
    createItem(color + "feather");
}