#loader contenttweaker

for template in VARIANTS.templates {
    val itemName as string = `${template}template`;
    if (VARIANTS.templates.indexOf(template) == 0) {
        COT_UTILS.createCreativeTabAndItem(itemName, `${MODPACK.id}.templates`);
    } else {
        COT_UTILS.createItem(itemName);
    }
}
COT_UTILS.resetCreativeTab();
