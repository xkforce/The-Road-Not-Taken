#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

import scripts.classes.color.Color as Cl;
import scripts.variables.misc.minecraftColors;

log.info("[🚧 MODPACKSETUP 🚧] 🪨 Creating fluids via ContentTweaker...");

for c in minecraftColors {
    val color as Cl = getColor(c);
    var dyedwater = VanillaFactory.createFluid(`${c.replace("", "")}dyedwater`, Color.fromHex(color.hex.replace("#", "")));
    dyedwater.vaporize = true;
    dyedwater.register();
    log.trace(`💧 Registering dyed water for color *${c}*.`);
}

var liquidsulfur = VanillaFactory.createFluid("liquidsulfur", Color.fromHex("FFFFFFA0"));
liquidsulfur.luminosity = 3;
liquidsulfur.temperature = 400;
liquidsulfur.density = 1800;
liquidsulfur.viscosity = 5000;
liquidsulfur.material = <blockmaterial:Lava>;
liquidsulfur.register();

var blacklava = VanillaFactory.createFluid("blacklava", Color.fromHex("FFFFFFA0"));
blacklava.luminosity = 3;
blacklava.temperature = 800;
blacklava.density = 1800;
blacklava.viscosity = 5000;
blacklava.material = <blockmaterial:Lava>;
blacklava.register();

var redlava = VanillaFactory.createFluid("redlava", Color.fromHex("FFFFFFA0"));
redlava.luminosity = 3;
redlava.temperature = 1500;
redlava.density = 1800;
redlava.viscosity = 5000;
redlava.material = <blockmaterial:Lava>;
redlava.register();

var yellowlava = VanillaFactory.createFluid("yellowlava", Color.fromHex("FFFFFFA0"));
yellowlava.luminosity = 3;
yellowlava.temperature = 800;
yellowlava.density = 1800;
yellowlava.viscosity = 5000;
yellowlava.material = <blockmaterial:Lava>;
yellowlava.register();

var oil = VanillaFactory.createFluid("oil", Color.fromHex("000000"));
oil.density = 700;
oil.viscosity = 2000;
oil.material = <blockmaterial:water>;
oil.register();

var lila = VanillaFactory.createFluid("lila", Color.fromHex("8000D0"));
lila.vaporize = true;
lila.register();

var bluemud = VanillaFactory.createFluid("bluemud", Color.fromHex("8000D0"));
bluemud.vaporize = true;
bluemud.register();

var lunarmud = VanillaFactory.createFluid("lunarmud", Color.fromHex("8000D0"));
lunarmud.vaporize = true;
lunarmud.register();

var martianmud = VanillaFactory.createFluid("martianmud", Color.fromHex("8000D0"));
martianmud.vaporize = true;
martianmud.register();

var mercurianmud = VanillaFactory.createFluid("mercurianmud", Color.fromHex("8000D0"));
mercurianmud.vaporize = true;
mercurianmud.register();

var venusianmud = VanillaFactory.createFluid("venusianmud", Color.fromHex("8000D0"));
venusianmud.vaporize = true;
venusianmud.register();

var blackmud = VanillaFactory.createFluid("blackmud", Color.fromHex("8000D0"));
blackmud.vaporize = true;
blackmud.register();

var graymud = VanillaFactory.createFluid("graymud", Color.fromHex("8000D0"));
graymud.vaporize = true;
graymud.register();

var greenmud = VanillaFactory.createFluid("greenmud", Color.fromHex("8000D0"));
greenmud.vaporize = true;
greenmud.register();

var orangemud = VanillaFactory.createFluid("orangemud", Color.fromHex("8000D0"));
orangemud.vaporize = true;
orangemud.register();

var langoustinemud = VanillaFactory.createFluid("langoustinemud", Color.fromHex("8000D0"));
langoustinemud.vaporize = true;
langoustinemud.register();

var beermud = VanillaFactory.createFluid("beermud", Color.fromHex("8000D0"));
beermud.vaporize = true;
beermud.register();

var spicypurplemud = VanillaFactory.createFluid("spicypurplemud", Color.fromHex("8000D0"));
spicypurplemud.vaporize = true;
spicypurplemud.register();

var redmud = VanillaFactory.createFluid("redmud", Color.fromHex("8000D0"));
redmud.vaporize = true;
redmud.register();

var whitemud = VanillaFactory.createFluid("whitemud", Color.fromHex("8000D0"));
whitemud.vaporize = true;
whitemud.register();

var yellowmud = VanillaFactory.createFluid("yellowmud", Color.fromHex("8000D0"));
yellowmud.vaporize = true;
yellowmud.register();

var arcanereddirtmud = VanillaFactory.createFluid("arcanereddirtmud", Color.fromHex("8000D0"));
arcanereddirtmud.vaporize = true;
arcanereddirtmud.register();

var cyanmud = VanillaFactory.createFluid("cyanmud", Color.fromHex("8000D0"));
cyanmud.vaporize = true;
cyanmud.register();

var frappemud = VanillaFactory.createFluid("frappemud", Color.fromHex("8000D0"));
frappemud.vaporize = true;
frappemud.register();

var lavendermud = VanillaFactory.createFluid("lavendermud", Color.fromHex("8000D0"));
lavendermud.vaporize = true;
lavendermud.register();

var lightbluemud = VanillaFactory.createFluid("lightbluemud", Color.fromHex("8000D0"));
lightbluemud.vaporize = true;
lightbluemud.register();

var pinkmud = VanillaFactory.createFluid("pinkmud", Color.fromHex("8000D0"));
pinkmud.vaporize = true;
pinkmud.register();

var purplemud = VanillaFactory.createFluid("purplemud", Color.fromHex("8000D0"));
purplemud.vaporize = true;
purplemud.register();

var purpleprotegemud = VanillaFactory.createFluid("purpleprotegemud", Color.fromHex("8000D0"));
purpleprotegemud.vaporize = true;
purpleprotegemud.register();













