#loader contenttweaker

for crop in INEDIBLE_CROPS {
    if (INEDIBLE_CROPS.indexOf(crop) == 0) {
        COT_UTILS.createCreativeTabAndItem(crop, `${MODPACK.id}.inediblecrops`);
    } else {
        COT_UTILS.createItem(crop);
    }
}
COT_UTILS.resetCreativeTab();
