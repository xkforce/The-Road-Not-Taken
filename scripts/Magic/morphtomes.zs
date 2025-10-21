#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;

var reversion = VanillaFactory.createItem("reversion");
reversion.maxStackSize = 1;
reversion.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand minecraft:air", player, world, false, true);
}
    return "Pass";
};
reversion.register();

var pigmorph = VanillaFactory.createItem("pigmorph");
pigmorph.maxStackSize = 1;
pigmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:pig", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
pigmorph.register();

var cowmorph = VanillaFactory.createItem("cowmorph");
cowmorph.maxStackSize = 1;
cowmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:cow", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
cowmorph.register();

var chickenmorph = VanillaFactory.createItem("chickenmorph");
chickenmorph.maxStackSize = 1;
chickenmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:chicken", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
chickenmorph.register();

var horsemorph = VanillaFactory.createItem("horsemorph");
horsemorph.maxStackSize = 1;
horsemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:horse", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
horsemorph.register();

var batmorph = VanillaFactory.createItem("batmorph");
batmorph.maxStackSize = 1;
batmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:bat", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
batmorph.register();

var sheepmorph = VanillaFactory.createItem("sheepmorph");
sheepmorph.maxStackSize = 1;
sheepmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:sheep", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
sheepmorph.register();

var blazemorph = VanillaFactory.createItem("blazemorph");
blazemorph.maxStackSize = 1;
blazemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:blaze", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
blazemorph.register();

var spidermorph = VanillaFactory.createItem("spidermorph");
spidermorph.maxStackSize = 1;
spidermorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:spider", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
spidermorph.register();

var creepermorph = VanillaFactory.createItem("creepermorph");
creepermorph.maxStackSize = 1;
creepermorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:creeper", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
creepermorph.register();

var endermanmorph = VanillaFactory.createItem("endermanmorph");
endermanmorph.maxStackSize = 1;
endermanmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:enderman", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
endermanmorph.register();

var llamamorph = VanillaFactory.createItem("llamamorph");
llamamorph.maxStackSize = 1;
llamamorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:llama", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
llamamorph.register();

var skeletonmorph = VanillaFactory.createItem("skeletonmorph");
skeletonmorph.maxStackSize = 1;
skeletonmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:skeleton", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
skeletonmorph.register();

var slimemorph = VanillaFactory.createItem("slimemorph");
slimemorph.maxStackSize = 1;
slimemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:slime", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
slimemorph.register();

var wolfmorph = VanillaFactory.createItem("wolfmorph");
wolfmorph.maxStackSize = 1;
wolfmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:wolf", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
wolfmorph.register();

var zombiemorph = VanillaFactory.createItem("zombiemorph");
zombiemorph.maxStackSize = 1;
zombiemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:zombie", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
zombiemorph.register();

var witchmorph = VanillaFactory.createItem("witchmorph");
witchmorph.maxStackSize = 1;
witchmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:witch", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
witchmorph.register();

var mooshroommorph = VanillaFactory.createItem("mooshroommorph");
mooshroommorph.maxStackSize = 1;
mooshroommorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:mooshroom", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
mooshroommorph.register();

var zombievillagermorph = VanillaFactory.createItem("zombievillagermorph");
zombievillagermorph.maxStackSize = 1;
zombievillagermorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:zombie_villager", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
zombievillagermorph.register();

var brownmooshroommorph = VanillaFactory.createItem("brownmooshroommorph");
brownmooshroommorph.maxStackSize = 1;
brownmooshroommorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:brown_mooshroom", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
brownmooshroommorph.register();

var donkeymorph = VanillaFactory.createItem("donkeymorph");
donkeymorph.maxStackSize = 1;
donkeymorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:donkey", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
donkeymorph.register();

var elderguardianmorph = VanillaFactory.createItem("elderguardianmorph");
elderguardianmorph.maxStackSize = 1;
elderguardianmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:elder_guardian", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
elderguardianmorph.register();

var endermitemorph = VanillaFactory.createItem("endermitemorph");
endermitemorph.maxStackSize = 1;
endermitemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:endermite", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
endermitemorph.register();

var evocationillagermorph = VanillaFactory.createItem("evocationillagermorph");
evocationillagermorph.maxStackSize = 1;
evocationillagermorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:evocation_illager", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
evocationillagermorph.register();

var guardianmorph = VanillaFactory.createItem("guardianmorph");
guardianmorph.maxStackSize = 1;
guardianmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:guardian", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
guardianmorph.register();

var huskmorph = VanillaFactory.createItem("huskmorph");
huskmorph.maxStackSize = 1;
huskmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:husk", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
huskmorph.register();

var ghastmorph = VanillaFactory.createItem("ghastmorph");
ghastmorph.maxStackSize = 1;
ghastmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:ghast", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
ghastmorph.register();

var magmacubemorph = VanillaFactory.createItem("magmacubemorph");
magmacubemorph.maxStackSize = 1;
magmacubemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:magma_cube", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
magmacubemorph.register();

var mulemorph = VanillaFactory.createItem("mulemorph");
mulemorph.maxStackSize = 1;
mulemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:mule", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
mulemorph.register();

var ocelotmorph = VanillaFactory.createItem("ocelotmorph");
ocelotmorph.maxStackSize = 1;
ocelotmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:ocelot", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
ocelotmorph.register();

var parrotmorph = VanillaFactory.createItem("parrotmorph");
parrotmorph.maxStackSize = 1;
parrotmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:parrot", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
parrotmorph.register();

var polarbearmorph = VanillaFactory.createItem("polarbearmorph");
polarbearmorph.maxStackSize = 1;
polarbearmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:polar_bear", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
polarbearmorph.register();

var rabbitmorph = VanillaFactory.createItem("rabbitmorph");
rabbitmorph.maxStackSize = 1;
rabbitmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:rabbit", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
rabbitmorph.register();

var shulkermorph = VanillaFactory.createItem("shulkermorph");
shulkermorph.maxStackSize = 1;
shulkermorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:shulker", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
shulkermorph.register();

var silverfishmorph = VanillaFactory.createItem("silverfishmorph");
silverfishmorph.maxStackSize = 1;
silverfishmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:silverfish", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
silverfishmorph.register();

var skeletonhorsemorph = VanillaFactory.createItem("skeletonhorsemorph");
skeletonhorsemorph.maxStackSize = 1;
skeletonhorsemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:skeleton_horse", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
skeletonhorsemorph.register();

var squidmorph = VanillaFactory.createItem("squidmorph");
squidmorph.maxStackSize = 1;
squidmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:squid", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
squidmorph.register();

var straymorph = VanillaFactory.createItem("straymorph");
straymorph.maxStackSize = 1;
straymorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:stray", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
straymorph.register();

var vexmorph = VanillaFactory.createItem("vexmorph");
vexmorph.maxStackSize = 1;
vexmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:vex", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
vexmorph.register();

var villagermorph = VanillaFactory.createItem("villagermorph");
villagermorph.maxStackSize = 1;
villagermorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:villager", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
villagermorph.register();

var vindicationillagermorph = VanillaFactory.createItem("vindicationillagermorph");
vindicationillagermorph.maxStackSize = 1;
vindicationillagermorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:vindication_illager", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
vindicationillagermorph.register();

var witherskeletonmorph = VanillaFactory.createItem("witherskeletonmorph");
witherskeletonmorph.maxStackSize = 1;
witherskeletonmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:wither_skeleton", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
witherskeletonmorph.register();

var zombiehorsemorph = VanillaFactory.createItem("zombiehorsemorph");
zombiehorsemorph.maxStackSize = 1;
zombiehorsemorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:zombie_horse", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
zombiehorsemorph.register();

var zombiepigmanmorph = VanillaFactory.createItem("zombiepigmanmorph");
zombiepigmanmorph.maxStackSize = 1;
zombiepigmanmorph.itemRightClick = function(stack, world, player, hand) {
if(hand == "MAIN_HAND") {
    Commands.call("morph @p minecraft:zombie_pigman", player, world, false, true);
    Commands.call("replaceitem entity @p slot.weapon.mainhand contenttweaker:reversion", player, world, false, true);
}
    return "Pass";
};
zombiepigmanmorph.register();








 
