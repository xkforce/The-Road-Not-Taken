#loader contenttweaker
#modloaded contenttweaker
#priority 111

import scripts.functions.contenttweaker.createCreativeTabAndItem;
import scripts.functions.contenttweaker.createItem;

import scripts.variables.templates.itemTemplates;

for template in itemTemplates {
    val itemName as string = template + "template";
    if (itemTemplates.indexOf(template) == 0) {
        createCreativeTabAndItem(itemName, modpackID + ".templates");
    } else {
        createItem(itemName);
    }
}
