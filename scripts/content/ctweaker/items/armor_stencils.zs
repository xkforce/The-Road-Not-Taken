#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

val stencils as string[] = [
    "amethyst", "aquamarine", "blackdiamond", "bronze", "chocolatediamond", "citrine", "copper", "diamond", "electrum", "emerald",
    "gold", "hepatizon", "iridium", "iron", "meteoriciron", "moonstone", "morganite", "netherite", "opal", "peridot", "rosegold",
    "ruby", "sapphire", "silver", "steel", "tin", "topaz", "zircon",
];

for color in stencils {
    val stencilName as string = color + "stencil";
    if (stencils.indexOf(color) == 0) {
        createCreativeTabAndItem(stencilName, modpackID + ".armorstencils");
    } else {
        createItem(stencilName);
    }
}