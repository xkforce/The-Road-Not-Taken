#loader crafttweaker
#priority 5000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.zenutils.I18n;

import scripts.variables.misc.oreColors;
import scripts.variables.misc.coloredStone;

for color in oreColors {
    for key in ["dyeNugget", "dyeBlock"] {
        val ore as IOreDictEntry = ore(key + color);
        var itemName as string = "contenttweaker:" + color + key;
        val item as IItemStack = item(itemName);

        val langKey as string = modpackID + ".item." + key.toLowerCase() + ".name";
        val langColor as string = modpackID + ".color." + color.toLowerCase() + ".name";
        item.displayName = I18n.format(langKey, I18n.format(langColor));

        ore.add(item);
    }
}

<ore:repeater>.add(<minecraft:repeater>);
<ore:comparator>.add(<minecraft:comparator>);
<ore:redstonetorch>.add(<minecraft:redstone_torch>);
<ore:dustRedstone>.add(<minecraft:redstone>);

if loadedMods has "coloredstone" {
    for color in coloredStone {
        <ore:repeater>.add(item("coloredstone:" + color + "stone_repeater"));
        <ore:comparator>.add(item("coloredstone:" + color + "stone_comparator"));
        <ore:redstonetorch>.add(item("coloredstone:" + color + "stone_torch"));
        <ore:dustRedstone>.add(item("coloredstone:" + color + "stone_wire"));
    }
} else {
    warn("Colored Stone mod not loaded, skipping adding colored stone redstone components to oredict.");
}