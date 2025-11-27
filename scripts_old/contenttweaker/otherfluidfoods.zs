#loader contenttweaker
#modloaded contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var fondue = VanillaFactory.createFluid("fondue", Color.fromHex("804000"));
fondue.temperature = 330;
fondue.vaporize = true;
fondue.register();

var hotwine = VanillaFactory.createFluid("hotwine", Color.fromHex("804000"));
hotwine.temperature = 330;
hotwine.vaporize = true;
hotwine.register();

var wine = VanillaFactory.createFluid("wine", Color.fromHex("804000"));
wine.temperature = 330;
wine.vaporize = true;
wine.register();




































