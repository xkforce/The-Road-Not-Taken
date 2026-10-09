#loader crafttweaker
#modloaded contenttweaker
#priority 1

import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;

import scripts.variables.templates.itemTemplates;

for template in itemTemplates {
    val itemName as string = template + "template";
    val item as IItemStack = item(`contenttweaker:${itemName}`);
    val langKey as string = `${modpackID}.variant.${template}.name`;

    item.displayName = I18n.format(langKey, I18n.format(`${modpackID}.item.template.name`));
}
