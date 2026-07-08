#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

import scripts.classes.color.Color as Cl;
import scripts.variables.misc.minecraftColors;

log.info("[🚧 MODPACK_SETUP 🚧] 🪨 Creating fluids via ContentTweaker...");

for c in minecraftColors {
    val color as Cl = getColor(c);
    var dyedwater = VanillaFactory.createFluid(`${c.replace("_", "")}dyedwater`, Color.fromHex(color.hex.replace("#", "")));
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
