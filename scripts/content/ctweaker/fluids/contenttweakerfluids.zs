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

var oil = VanillaFactory.createFluid("oil", Color.fromHex("000000"));
oil.density = 700;
oil.viscosity = 2000;
oil.material = <blockmaterial:water>;
oil.register();

var lila = VanillaFactory.createFluid("lila", Color.fromHex("8000D0"));
lila.vaporize = true;
lila.register();
