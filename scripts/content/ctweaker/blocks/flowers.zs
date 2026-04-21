#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val flowers as string[] = [
    "bluepurpletulip", 
    "bluetulipflowertulip", 
    "lightbluetulip", 
    "magentatulip", 
    "orangeredtulip", 
    "orangewhitetulip", 
    "orangeyellowtulip", 
    "purpleredtulip", 
    "purpletulip", 
    "yellowtulip", 
];

for f in flowers {
    var b as Block = VanillaFactory.createBlock(`${f}flower`, <blockmaterial:plants>);
    b.setBlockHardness(0.0);
    b.setBlockResistance(0.0);
    b.setLightOpacity(0);
    b.setPassable(true);
    b.setReplaceable(true);
    b.setTranslucent(true);
    b.setFullBlock(false);
    b.setBlockLayer("TRANSLUCENT");
    b.register();
}
