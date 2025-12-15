#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;
import scripts.variables.misc.sticks;

val miscs as string[] = [
    "charcoalnugget",
    "coalnugget",
    "coke",
    "cokenugget",
    "eyeofpurpur",
    "gear",
    "graphite",
    "graphitenugget",
    "phosphorus",
    "purpursalt",
    "redflint",
    "salt",
    "saltpeter",
    "sulfur",
    "moss",
    "brownlichen",
    "redlichen",
    "orangelichen",
    "yellowlichen"
];

for misc in miscs {
    if (miscs.indexOf(misc) == 0) {
        createCreativeTabAndItem(misc, modpackID + ".miscitems");
    } else {
        createItem(misc);
    }
}

for stick in sticks {
    val name as string = stick + "stick";
    createItem(name);
}
