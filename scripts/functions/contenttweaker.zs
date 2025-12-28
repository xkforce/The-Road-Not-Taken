#loader contenttweaker
#modloaded contenttweaker
#priority 100000

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

/**
 * Creates a new item.
 * @param name The name of the item.
 */
function createItem(name as string) {
    var item = VanillaFactory.createItem(name);
    if (!isNull(creativeTab)) {
        item.setCreativeTab(creativeTab);
    }
    item.register();
}

/**
 * Creates a new food item.
 * @param name The name of the item.
 * @param nutrition The nutrition of the item.
 * @param saturation The saturation of the item.
 */
function createFood(name as string, nutrition as int, saturation as float = 0.6 as float) {
    var item = VanillaFactory.createItemFood(name, nutrition);
    item.saturation = saturation;
    if (!isNull(creativeTab)) {
        item.setCreativeTab(creativeTab);
    }
    item.register();
}

/**
 * Creates a new item and set it as icon for a new creative tab.
 * @param itemName The name of the item.
 * @param tabName The name of the creative tab.
 */
function createCreativeTabAndItem(itemName as string, tabName as string) {
    var item as Item = VanillaFactory.createItem(itemName);
    var creativetab as CreativeTab = VanillaFactory.createCreativeTab(tabName, item);
    creativetab.register();
    item.creativeTab = creativetab;
    item.register();
    creativeTab = creativetab;
}

/**
 * Creates a new creative tab.
 * @param tabName The name of the creative tab.
 * @param item The item to set as icon for the creative tab.
 */
function createCreativeTabWithItem(tabName as string, item as Item) {
    var creativetab as CreativeTab = VanillaFactory.createCreativeTab(tabName, item);
    creativetab.register();
    creativeTab = creativetab;
}
