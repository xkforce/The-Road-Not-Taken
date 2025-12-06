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
        val ore as IOreDictEntry = oreDict.get(key + color);
        var itemName as string = "contenttweaker:" + color + key;
        val item as IItemStack = itemUtils.getItem(itemName.toLowerCase());
        item.displayName = I18n.format(modpackID + ".item." + key.toLowerCase() + ".name", I18n.format(modpackID + ".color." + color.toLowerCase() + ".name"));
        ore.add(item);
    }
}

<ore:repeater>.add(<minecraft:repeater>);
<ore:comparator>.add(<minecraft:comparator>);
<ore:redstonetorch>.add(<minecraft:redstone_torch>);
<ore:dustRedstone>.add(<minecraft:redstone>);

if loadedMods has "coloredstone" {
    for color in coloredStone {
        <ore:repeater>.add(itemUtils.getItem("coloredstone:" + color + "stone_repeater"));
        <ore:comparator>.add(itemUtils.getItem("coloredstone:" + color + "stone_comparator"));
        <ore:redstonetorch>.add(itemUtils.getItem("coloredstone:" + color + "stone_torch"));
        <ore:dustRedstone>.add(itemUtils.getItem("coloredstone:" + color + "stone_wire"));
    }
} else {
    print("Colored Stone mod not loaded, skipping adding colored stone redstone components to oredict.");
}