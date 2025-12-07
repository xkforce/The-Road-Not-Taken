#loader crafttweaker
#priority 5000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.variables.misc.oreColors;

var mcColor as string[] = oreColors.clone();
mcColor.reverse();

for i in 0 .. 15 {
    val color as string = mcColor[i];
    val dye as IIngredient = oreDict.get("dye" + color);
    val nugget as IIngredient = oreDict.get("dyeNugget" + color);

    for key in ["wool", "stained_hardened_clay", "stained_glass", "stained_glass_pane", "bed", "concrete_powder", "concrete", "carpet"] {
        var itemName as string = "minecraft:" + key;
        val item as IItemStack = itemUtils.getItem(itemName, i);
        val meta as IItemStack = itemUtils.getItem(itemName, 32767);

        recipes.removeByRecipeName(itemName);
        recipes.addShapeless("recolor_nugget_" + color.toLowerCase() + "_" + key, item, [meta, nugget]);
        recipes.addShapeless("recolor_dye_" + color.toLowerCase() + "_" + key, item * 8, [
            meta, meta, meta,
            meta, dye, meta,
            meta, meta, meta
        ]);
    }
}