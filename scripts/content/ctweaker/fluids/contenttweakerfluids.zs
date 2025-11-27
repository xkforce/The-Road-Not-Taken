#loader contenttweaker
#modloaded contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var whitedyedwater = VanillaFactory.createFluid("whitedyedwater", Color.fromHex("FFFFFF"));
whitedyedwater.vaporize = true;
whitedyedwater.register(); 

var reddyedwater = VanillaFactory.createFluid("reddyedwater", Color.fromHex("ff0000"));
reddyedwater.vaporize = true;
reddyedwater.register(); 

var yellowdyedwater = VanillaFactory.createFluid("yellowdyedwater", Color.fromHex("FFFF00"));
yellowdyedwater.vaporize = true;
yellowdyedwater.register(); 

var greendyedwater = VanillaFactory.createFluid("greendyedwater", Color.fromHex("008000"));
greendyedwater.vaporize = true;
greendyedwater.register(); 

var bluedyedwater = VanillaFactory.createFluid("bluedyedwater", Color.fromHex("0000ff"));
bluedyedwater.vaporize = true;
bluedyedwater.register(); 

var blackdyedwater = VanillaFactory.createFluid("blackdyedwater", Color.fromHex("111111"));
blackdyedwater.vaporize = true;
blackdyedwater.register(); 

var browndyedwater = VanillaFactory.createFluid("browndyedwater", Color.fromHex("7F5636"));
browndyedwater.vaporize = true;
browndyedwater.register(); 

var orangedyedwater = VanillaFactory.createFluid("orangedyedwater", Color.fromHex("FF8000"));
orangedyedwater.vaporize = true;
orangedyedwater.register(); 

var lightbluedyedwater = VanillaFactory.createFluid("lightbluedyedwater", Color.fromHex("87CEFA"));
lightbluedyedwater.vaporize = true;
lightbluedyedwater.register(); 

var magentadyedwater = VanillaFactory.createFluid("magentadyedwater", Color.fromHex("ff00ff"));
magentadyedwater.vaporize = true;
magentadyedwater.register(); 

var pinkdyedwater = VanillaFactory.createFluid("pinkdyedwater", Color.fromHex("FFC0C0"));
pinkdyedwater.vaporize = true;
pinkdyedwater.register(); 

var lightgraydyedwater = VanillaFactory.createFluid("lightgraydyedwater", Color.fromHex("999999"));
lightgraydyedwater.vaporize = true;
lightgraydyedwater.register(); 

var limedyedwater = VanillaFactory.createFluid("limedyedwater", Color.fromHex("00ff00"));
limedyedwater.vaporize = true;
limedyedwater.register(); 

var cyandyedwater = VanillaFactory.createFluid("cyandyedwater", Color.fromHex("008080"));
cyandyedwater.vaporize = true;
cyandyedwater.register(); 

var purpledyedwater = VanillaFactory.createFluid("purpledyedwater", Color.fromHex("A020F0"));
purpledyedwater.vaporize = true;
purpledyedwater.register(); 

var graydyedwater = VanillaFactory.createFluid("graydyedwater", Color.fromHex("666666"));
graydyedwater.vaporize = true;
graydyedwater.register(); 

var liquidsulfur = VanillaFactory.createFluid("liquidsulfur", Color.fromHex("FFFFFFA0"));
liquidsulfur.luminosity = 3;
liquidsulfur.temperature = 400;
liquidsulfur.density = 1800;
liquidsulfur.viscosity = 5000;
liquidsulfur.material = <blockmaterial:Lava>;
liquidsulfur.register(); 

var oil = VanillaFactory.createFluid("oil", Color.fromHex("000000"));
oil.density = 700;
oil.viscosity = 2000;
oil.material = <blockmaterial:water>;
oil.register(); 

var lila = VanillaFactory.createFluid("lila", Color.fromHex("8000D0"));
lila.vaporize = true;
lila.register(); 







