#loader crafttweaker
#modloaded contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import scripts.variables.misc.oreColors;

val emptybrush as IItemStack = <contenttweaker:emptypaintbrush>;

val dyeData as int[][string] = {
    "dyeBlock": [576, 72],
    "dye": [640, 8],
    "dyeNugget": [647, 1],
};

for color in oreColors {
    val itemName as string = color.toLowerCase() + "paintbrush";
    val brush as IItemStack = itemUtil.getItem("contenttweaker:", itemName);

    for dye, data in dyeData {
        val dyeItem as IIngredient = oreDict.get(dye + color);
        val dyeBrush as IItemStack = itemUtil.getItem("contenttweaker:", itemName, data[0]);

        recipes.addShapeless(itemName + "_" + dye.toLowerCase(), dyeBrush, [brush, dyeItem]);
        recipes.addShapeless(itemName + "_repair_" + dye.toLowerCase(), brush, [brush.anyDamage().marked("mark"), dyeItem],
            function(out, ins, cInfo) { return ins.mark.withDamage(max(0, ins.mark.damage - data[1])); }, null);
    }
}