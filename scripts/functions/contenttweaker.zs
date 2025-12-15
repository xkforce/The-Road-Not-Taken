#loader contenttweaker
#modloaded contenttweaker
#priority 5000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.SoundEvent;
import crafttweaker.creativetabs.ICreativeTab;

static creativeTab as CreativeTab = null;

function createItem(name as string) {
    var item = VanillaFactory.createItem(name);
    if (!isNull(creativeTab)) {
        item.setCreativeTab(creativeTab);
    }
    item.register();
}

function createFood(name as string, nutrition as int, saturation as float = 0.6 as float) {
    var item = VanillaFactory.createItemFood(name, nutrition);
    item.saturation = saturation;
    if (!isNull(creativeTab)) {
        item.setCreativeTab(creativeTab);
    }
    item.register();
}

function createCreativeTabAndItem(itemName as string, tabName as string) {
    var item as Item = VanillaFactory.createItem(itemName);
    var creativetab as CreativeTab = VanillaFactory.createCreativeTab(tabName, item);
    creativetab.register();
    item.creativeTab = creativetab;
    item.register();
    creativeTab = creativetab;
}

function createCreativeTabWithItem(tabName as string, item as Item) {
    var creativetab as CreativeTab = VanillaFactory.createCreativeTab(tabName, item);
    creativetab.register();
    creativeTab = creativetab;
}