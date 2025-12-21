#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

val templates as string[] = [
    "archerleft",
    "archerright",
    "armsdown",
    "armsup",
    "axeleft",
    "axeright",
    "bladeleft",
    "bladeright",
    "blank",
    "brick",
    "brokenheart",
    "carvedcreeper",
    "carvedskeleton",
    "carvedzombie",
    "chestleft",
    "chestright",
    "chibicreeperleft",
    "chibicreeperright",
    "chiseledbrick",
    "cut", 
    "deboss",
    "dogleft",
    "dogright",
    "explorerleft", 
    "explorerright",
    "fire",
    "fishingrodleft",
    "fishingrodright",
    "friend",
    "ghast", 
    "guster", 
    "heart",
    "miner", 
    "mourner", 
    "polished",
    "potion",
    "prize", 
    "sheaf", 
    "shelter",
    "shortbrick",
    "slimeleft",
    "slimeright",
    "swirlcb", 
    "swirlccb", 
    "swirlcct", 
    "swirlct", 
    "tile",
    "turtleleft",
    "turtleright",
    "waveleft",
    "waveright",
    "wither"
];

for template in templates {
    val itemName as string = template + "template";
    if (templates.indexOf(template) == 0) {
        createCreativeTabAndItem(itemName, modpackID + ".templates");
    } else {
        createItem(itemName);
    }
}


 

