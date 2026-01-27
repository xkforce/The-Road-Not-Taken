#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

import scripts.trnt_02_setup.classes.zen_colors.Color as Cl;

LOG.info("💧 Creating fluids...");

for c in MC_COLOR.colors {
    val color as Cl = getColor(c);
    var dyedwater as Fluid = VanillaFactory.createFluid(`${c.replace("_", "")}dyedwater`, Color.fromHex(color.hex.replace("#", "")));
    dyedwater.vaporize = true;
    dyedwater.register();
    LOG.debug(`💧 Registering dyed water for color *${c}*.`);
    FLUID_COUNTER.increment();
}

var liquidsulfur as Fluid = VanillaFactory.createFluid("liquidsulfur", Color.fromHex("FFFFFFA0"));
liquidsulfur.luminosity = 3;
liquidsulfur.temperature = 400;
liquidsulfur.density = 1800;
liquidsulfur.viscosity = 5000;
liquidsulfur.material = <blockmaterial:Lava>;
liquidsulfur.register();
FLUID_COUNTER.increment();

var oil as Fluid = VanillaFactory.createFluid("oil", Color.fromHex("000000"));
oil.density = 700;
oil.viscosity = 2000;
oil.material = <blockmaterial:water>;
oil.register();
FLUID_COUNTER.increment();

var lila as Fluid = VanillaFactory.createFluid("lila", Color.fromHex("8000D0"));
lila.vaporize = true;
lila.register();
FLUID_COUNTER.increment();
