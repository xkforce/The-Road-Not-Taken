#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;

//Tools
var steelchisel = VanillaFactory.createItem("steelchisel");
steelchisel.maxStackSize = 1;
steelchisel.maxDamage = 250;
steelchisel.register();

var emptypaintbrush = VanillaFactory.createItem("emptypaintbrush");
emptypaintbrush.maxStackSize = 1;
emptypaintbrush.maxDamage = 648;
emptypaintbrush.register();

var redpaintbrush = VanillaFactory.createItem("redpaintbrush");
redpaintbrush.maxStackSize = 1;
redpaintbrush.maxDamage = 648;
redpaintbrush.register();

var orangepaintbrush = VanillaFactory.createItem("orangepaintbrush");
orangepaintbrush.maxStackSize = 1;
orangepaintbrush.maxDamage = 648;
orangepaintbrush.register();

var yellowpaintbrush = VanillaFactory.createItem("yellowpaintbrush");
yellowpaintbrush.maxStackSize = 1;
yellowpaintbrush.maxDamage = 648;
yellowpaintbrush.register();

var greenpaintbrush = VanillaFactory.createItem("greenpaintbrush");
greenpaintbrush.maxStackSize = 1;
greenpaintbrush.maxDamage = 648;
greenpaintbrush.register();

var bluepaintbrush = VanillaFactory.createItem("bluepaintbrush");
bluepaintbrush.maxStackSize = 1;
bluepaintbrush.maxDamage = 648;
bluepaintbrush.register();

var purplepaintbrush = VanillaFactory.createItem("purplepaintbrush");
purplepaintbrush.maxStackSize = 1;
purplepaintbrush.maxDamage = 648;
purplepaintbrush.register();

var pinkpaintbrush = VanillaFactory.createItem("pinkpaintbrush");
pinkpaintbrush.maxStackSize = 1;
pinkpaintbrush.maxDamage = 648;
pinkpaintbrush.register();

var magentapaintbrush = VanillaFactory.createItem("magentapaintbrush");
magentapaintbrush.maxStackSize = 1;
magentapaintbrush.maxDamage = 648;
magentapaintbrush.register();

var brownpaintbrush = VanillaFactory.createItem("brownpaintbrush");
brownpaintbrush.maxStackSize = 1;
brownpaintbrush.maxDamage = 648;
brownpaintbrush.register();

var lightbluepaintbrush = VanillaFactory.createItem("lightbluepaintbrush");
lightbluepaintbrush.maxStackSize = 1;
lightbluepaintbrush.maxDamage = 648;
lightbluepaintbrush.register();

var lightgraypaintbrush = VanillaFactory.createItem("lightgraypaintbrush");
lightgraypaintbrush.maxStackSize = 1;
lightgraypaintbrush.maxDamage = 648;
lightgraypaintbrush.register();

var limepaintbrush = VanillaFactory.createItem("limepaintbrush");
limepaintbrush.maxStackSize = 1;
limepaintbrush.maxDamage = 648;
limepaintbrush.register();

var graypaintbrush = VanillaFactory.createItem("graypaintbrush");
graypaintbrush.maxStackSize = 1;
graypaintbrush.maxDamage = 648;
graypaintbrush.register();

var blackpaintbrush = VanillaFactory.createItem("blackpaintbrush");
blackpaintbrush.maxStackSize = 1;
blackpaintbrush.maxDamage = 648;
blackpaintbrush.register();

var whitepaintbrush = VanillaFactory.createItem("whitepaintbrush");
whitepaintbrush.maxStackSize = 1;
whitepaintbrush.maxDamage = 648;
whitepaintbrush.register();

var cyanpaintbrush = VanillaFactory.createItem("cyanpaintbrush");
cyanpaintbrush.maxStackSize = 1;
cyanpaintbrush.maxDamage = 648;
cyanpaintbrush.register();

//Chisel Templates
var blanktemplate = VanillaFactory.createItem("blanktemplate");
blanktemplate.register();

//Universal Templates
var brickstemplate = VanillaFactory.createItem("brickstemplate");
brickstemplate.register();

var shortbrickstemplate = VanillaFactory.createItem("shortbrickstemplate");
shortbrickstemplate.register();

var carvedinwardtemplate = VanillaFactory.createItem("carvedinwardtemplate");
carvedinwardtemplate.register();

var debosstemplate = VanillaFactory.createItem("debosstemplate");
debosstemplate.register();

var tilestemplate = VanillaFactory.createItem("tilestemplate");
tilestemplate.register();

//Sandstone only Templates
var carvedzombietemplate = VanillaFactory.createItem("carvedzombietemplate");
carvedzombietemplate.register();

var carvedskeletontemplate = VanillaFactory.createItem("carvedskeletontemplate");
carvedskeletontemplate.register();

var carvedcreepertemplate = VanillaFactory.createItem("carvedcreepertemplate");
carvedcreepertemplate.register();

var chestlefttemplate = VanillaFactory.createItem("chestlefttemplate");
chestlefttemplate.register();

var chestrighttemplate = VanillaFactory.createItem("chestrighttemplate");
chestrighttemplate.register();

var chibicreeperlefttemplate = VanillaFactory.createItem("chibicreeperlefttemplate");
chibicreeperlefttemplate.register();

var chibicreeperrighttemplate = VanillaFactory.createItem("chibicreeperrighttemplate");
chibicreeperrighttemplate.register();

var doglefttemplate = VanillaFactory.createItem("doglefttemplate");
doglefttemplate.register();

var dogrighttemplate = VanillaFactory.createItem("dogrighttemplate");
dogrighttemplate.register();

var fishingrodlefttemplate = VanillaFactory.createItem("fishingrodlefttemplate");
fishingrodlefttemplate.register();

var fishingrodrighttemplate = VanillaFactory.createItem("fishingrodrighttemplate");
fishingrodrighttemplate.register();

var hearttemplate = VanillaFactory.createItem("hearttemplate");
hearttemplate.register();

var potiontemplate = VanillaFactory.createItem("potiontemplate");
potiontemplate.register();

var slimelefttemplate = VanillaFactory.createItem("slimelefttemplate");
slimelefttemplate.register();

var slimerighttemplate = VanillaFactory.createItem("slimerighttemplate");
slimerighttemplate.register();

var turtlelefttemplate = VanillaFactory.createItem("turtlelefttemplate");
turtlelefttemplate.register();

var turtlerighttemplate = VanillaFactory.createItem("turtlerighttemplate");
turtlerighttemplate.register();

var wavelefttemplate = VanillaFactory.createItem("wavelefttemplate");
wavelefttemplate.register();

var waverighttemplate = VanillaFactory.createItem("waverighttemplate");
waverighttemplate.register();

var sandstonetemplate = VanillaFactory.createItem("sandstonetemplate");
sandstonetemplate.register();

var smoothsandstonetemplate = VanillaFactory.createItem("smoothsandstonetemplate");
smoothsandstonetemplate.register();

var archerlefttemplate = VanillaFactory.createItem("archerlefttemplate");
archerlefttemplate.register();

var archerrighttemplate = VanillaFactory.createItem("archerrighttemplate");
archerrighttemplate.register();

var armsdowntemplate = VanillaFactory.createItem("armsdowntemplate");
armsdowntemplate.register();

var armsuptemplate = VanillaFactory.createItem("armsuptemplate");
armsuptemplate.register();

var brokenhearttemplate = VanillaFactory.createItem("brokenhearttemplate");
brokenhearttemplate.register();



















