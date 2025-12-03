#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

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
];

for misc in miscs {
    if (miscs.indexOf(misc) == 0) {
        createCreativeTabAndItem(misc, modpackID + ".miscitems");
    } else {
        createItem(misc);
    }
}

val sticks as string[] = [
    "oak",
    "birch",
    "jungle",
    "acacia",
    "darkoak",
    "cherry",
    "umbran",
    "fir",
    "mangrove",
    "redwood",
    "willow",
    "pine",
    "jacaranda",
    "mahogany",
    "ebony",
    "eucalyptus",
    "blackkauri",
    "brazillianpine",
    "incensecedar",
    "maple",
    "baobab",
    "cottonwood",
    "juniper",
    "sugi",
];

for stick in sticks {
    val name as string = stick + "stick";
    createItem(name);
}