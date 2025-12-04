#loader crafttweaker
#priority 5000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.variables.misc.oreColors;
import scripts.variables.misc.coloredStone;

for color in oreColors {
    for key in ["dyeNugget", "dyeBlock"] {
        val ore as IOreDictEntry = oreDict.get(key + color);
        var itemName as string = "contenttweaker:" + color + key;
        val item as IItemStack = itemUtils.getItem(itemName.toLowerCase());
        ore.add(item);
    }
}

<ore:repeater>.add(<minecraft:repeater>);
<ore:comparator>.add(<minecraft:comparator>);
<ore:redstonetorch>.add(<minecraft:redstone_torch>);
<ore:dustRedstone>.add(<minecraft:redstone>);

for color in coloredStone {
    <ore:repeater>.add(itemUtils.getItem("coloredstone:" + color + "stone_repeater"));
    <ore:comparator>.add(itemUtils.getItem("coloredstone:" + color + "stone_comparator"));
    <ore:redstonetorch>.add(itemUtils.getItem("coloredstone:" + color + "stone_torch"));
    <ore:dustRedstone>.add(itemUtils.getItem("coloredstone:" + color + "stone_wire"));
}