#loader crafttweaker
#modloaded contenttweaker biomesoplenty plants2 pvj sugiforest

import crafttweaker.item.IItemStack;

val sticks as IItemStack[string] = {
    "acaciastick" : <minecraft:planks:4>,
    "birchstick" : <minecraft:planks:2>,
    "blackkauristick" : <plants2:planks:2>,
    "cherrystick" : <biomesoplenty:planks_0:1>,
    "darkoakstick" : <minecraft:planks:5>,
    "ebonystick" : <biomesoplenty:planks_0:14>,
    "eucalyptusstick" : <biomesoplenty:planks_0:15>,
    "firstick" : <biomesoplenty:planks_0:3>,
    "jacarandastick" : <biomesoplenty:planks_0:12>,
    "junglestick" : <minecraft:planks:3>,
    "mahoganystick" : <biomesoplenty:planks_0:13>,
    "mangrovestick" : <biomesoplenty:planks_0:6>,
    "oakstick" : <minecraft:planks>,
    "pinestick" : <biomesoplenty:planks_0:10>,
    "redwoodstick" : <biomesoplenty:planks_0:8>,
    "umbranstick" : <biomesoplenty:planks_0:2>,
    "willowstick" : <biomesoplenty:planks_0:9>,
    "sugistick" : <sugiforest:sugi_planks>,
    "juniperstick" : <pvj:planks_juniper>,
    "cottonwoodstick" : <pvj:planks_cottonwood>,
    "baobabstick" : <pvj:planks_baobab>,
    "maplestick" : <pvj:planks_maple>,
    "incensecedarstick" : <plants2:planks:4>,
    "brazillianpinestick" : <plants2:planks:3>,
};

for stick, input in sticks {
    val output as IItemStack = itemUtils.getItem("contenttweaker:" + stick);
    if (!isNull(output)) {
        recipes.addShaped(stick, output * 4, [[input], [input]]);
    } else {
        print("Error: Output item for <" + stick + "> is null!");
    }
}