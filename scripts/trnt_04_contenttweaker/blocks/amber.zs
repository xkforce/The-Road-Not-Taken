#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

static bugs as string[] = [
    "ant", "bee", "wasp", "beetle", "grasshopper", "dragonfly", "damselfly", "flea", "fly", "aphid", "termite", "mosquito",
    "spider", "moth", "butterfly", "gnat", "silverfish", "cockroach", "cricket", "prayingmantis", "firefly", "antlion",
    "stickinsect", "weevil", "assassinbug", "bedbug", "earwig", "mayfly", "stinkbug", "millipede", "centipede", "catapillar",
    "mite", "tick", "waterstrider", "maggot", "ladybug", "rolypoly", "mealworm",
];

for bug in bugs {
    var newBlock as Block = VanillaFactory.createBlock(`${bug}inamber`, <blockmaterial:rock>);
    newBlock.setBlockHardness(1.5);
    newBlock.setBlockResistance(6.0);
    newBlock.setToolClass("pickaxe");
    newBlock.setToolLevel(0);
    newBlock.register();
    BLOCK_COUNTER.increment();
}
