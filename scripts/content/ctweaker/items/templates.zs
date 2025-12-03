#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

val templates as string[] = [
    "blank",
    "bricks",
    "shortbricks",
    "carvedinward",
    "deboss",
    "tiles",
    "carvedzombie",
    "carvedskeleton",
    "carvedcreeper",
    "chestleft",
    "chestright",
    "chibicreeperleft",
    "chibicreeperright",
    "dogleft",
    "dogright",
    "fishingrodleft",
    "fishingrodright",
    "heart",
    "potion",
    "slimeleft",
    "slimeright",
    "turtleleft",
    "turtleright",
    "waveleft",
    "waveright",
    "sandstone",
    "smoothsandstone",
    "archerleft",
    "archerright",
    "armsdown",
    "armsup",
    "brokenheart",
];

for template in templates {
    val itemName as string = template + "template";
    if (templates.indexOf(template) == 0) {
        createCreativeTabAndItem(itemName, modpackID + ".templates");
    } else {
        createItem(itemName);
    }
}