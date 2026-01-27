#loader contenttweaker
#priority 2

for color in MC_COLOR.colors {
    if (MC_COLOR.colors.indexOf(color) == 0) {
        COT_UTILS.createCreativeTabAndItem(`${color}dyenugget`, `${MODPACK.id}.colored`);
    } else {
        COT_UTILS.createItem(`${color}dyenugget`);
    }
    COT_UTILS.createItem(`${color}sparkler`);
    COT_UTILS.createItem(`${color}feather`);
}
