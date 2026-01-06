#loader crafttweaker
#priority 1

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;

import scripts.variables.misc.oreColors;

for color in oreColors {
    val c as string = color.toLowerCase();
    val nugget as IItemStack = item(`contenttweaker:${c}dyenugget`);
    val block as IItemStack = item(`contenttweaker:${c}dyeblock`);
    val dye as IIngredient = oreDict.get(`dye${color}`);

    recipes.addShapeless(`compress_${c}_dye`, block, [
        dye, dye, dye,
        dye, dye, dye,
        dye, dye, dye
    ]);

    recipes.addShapeless(`compress_${c}_dyenugget`, dye.items[0], [
        nugget, nugget, nugget,
        nugget, nugget, nugget,
        nugget, nugget, nugget
    ]);

    recipes.addShapeless(`decompress_${c}_dyeblock`, dye.items[0] * 9, [block]);

    recipes.addShapeless(`decompress_${c}_dye`, nugget * 9, [dye]);

    for key in ["sparkler", "feather"] {
        val itemName as string = `contenttweaker:${c}${key}`;
        val item as IItemStack = item(itemName);

        val langKey as string = `${modpackID}.item.${key}.name`;
        val langColor as string = `${modpackID}.palette.${c}.name`;
        item.displayName = I18n.format(langKey, I18n.format(langColor));
    }
}
