#loader crafttweaker
#modloaded contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;

import scripts.variables.misc.oreColors;

val emptybrush as IItemStack = <contenttweaker:emptypaintbrush>;

val dyeData as int[][string] = {
    "dyeBlock": [576, 72],
    "dye": [640, 8],
    "dyeNugget": [647, 1],
};

for color in oreColors {
    val itemName as string = "contenttweaker:" + color.toLowerCase() + "paintbrush";
    val brush as IItemStack = itemUtils.getItem(itemName);

    val langColor as string = I18n.format(modpackID + ".color." + color.toLowerCase() + ".name");
    brush.displayName = I18n.format(modpackID + ".item.paintbrush.name", langColor);

    for dye, data in dyeData {
        val d as string = dye.toLowerCase();
        val dyeItem as IIngredient = oreDict.get(dye + color);
        val dyeBrush as IItemStack = itemUtils.getItem(itemName, data[0]);
        val recipeName as string = itemName.replace("contenttweaker:", "");

        recipes.addShapeless(recipeName + "_" + d, dyeBrush, [brush, dyeItem]);
        recipes.addShapeless(recipeName + "_repair_" + d, brush, [brush.anyDamage().marked("mark"), dyeItem],
            function(out, ins, cInfo) { return ins.mark.withDamage(max(0, ins.mark.damage - data[1])); }, null);
    }
}