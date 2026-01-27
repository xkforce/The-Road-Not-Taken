#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

LOG.info("🧀 Creating cheese blocks...");

static age as string[] = [
    "mild",
    "medium",
    "sharp",
    "extrasharp",
    "mature"
];

static cheese as string[] = [
    "asiago",
    "blue",
    "cheddar",
    "chevre",
    "gouda",
    "habanerojack",
    "havarti",
    "manchego",
    "montereyjack",
    "parmigianoreggiano",
    "pepperjack",
    "provolone",
    "swiss",
    "roquefort",
];

for age in age {
    for cheese in cheese {
        var block as Block = VanillaFactory.createBlock(`${age}${cheese}cheeseblock`, <blockmaterial:sponge>);
        block.setBlockHardness(0.5);
        block.setBlockResistance(2.5);
        block.setToolLevel(0);
        block.register();
        BLOCK_COUNTER.increment();
    }
}
