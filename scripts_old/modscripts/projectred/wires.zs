#loader crafttweaker
#modloaded projectred-transmission futuremc
#priority 1

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import scripts.variables.misc.oreColors;

val wireColor as string[] = oreColors.clone();
wireColor.reverse();

if loadedMods has "futuremc" {
    recipes.addShapeless("craft_projectred_wire_from_futuremc", <projectred-transmission:wire:1>, [
        <projectred-transmission:wire>, item("futuremc:honeycomb")
    ]);
}

for i in 1 .. 16 {
    val color as string = wireColor[i - 1];
    val output as IItemStack = itemMeta("projectred-transmission:wire", i);
    val anyWire as IIngredient = itemMeta("projectred-transmission:wire", 32767);

    val dye as IIngredient = ore("dye" + color);
    val nugget as IIngredient = ore("dyeNugget" + color);

    recipes.addShapeless(`recolor_projectred_wire_nugget_${color.toLowerCase()}`, output, [
        anyWire, nugget
    ]);
    recipes.addShapeless(`recolor_projectred_wire_dye_${color.toLowerCase()}`, output * 8, [
        anyWire, anyWire, anyWire,
        anyWire, dye,    anyWire,
        anyWire, anyWire, anyWire
    ]);
}
