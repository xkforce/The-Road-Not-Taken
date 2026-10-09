#loader contenttweaker
#modloaded contenttweaker
#priority 111

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

val stencils as string[] = [
    "copper", 
    "iron", 
    "netherite", 
];

for color in stencils {
    val stencilName as string = color + "stencil";
    if (stencils.indexOf(color) == 0) {
        createCreativeTabAndItem(stencilName, modpackID + ".armorstencils");
    } else {
        createItem(stencilName);
    }
}
