#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var calade = VanillaFactory.createBlock("calade", <blockmaterial:rock>);
calade.setBlockHardness(1.5);
calade.setBlockResistance(30.0);
calade.setToolClass("pickaxe");
calade.setToolLevel(0);
calade.register();

var cokeblock = VanillaFactory.createBlock("cokeblock", <blockmaterial:rock>);
cokeblock.setBlockHardness(30.0);
cokeblock.setBlockResistance(5.0);
cokeblock.setToolClass("pickaxe");
cokeblock.setToolLevel(0);
cokeblock.register();

var graphiteblock = VanillaFactory.createBlock("graphiteblock", <blockmaterial:rock>);
graphiteblock.setBlockHardness(30.0);
graphiteblock.setBlockResistance(5.0);
graphiteblock.setToolClass("pickaxe");
graphiteblock.setToolLevel(0);
graphiteblock.register();

var phosphorusblock = VanillaFactory.createBlock("phosphorusblock", <blockmaterial:rock>);
phosphorusblock.setBlockHardness(0.5);
phosphorusblock.setBlockResistance(2.5);
phosphorusblock.setToolClass("pickaxe");
phosphorusblock.setToolLevel(0);
phosphorusblock.register();

var rottenfleshblock = VanillaFactory.createBlock("rottenfleshblock", <blockmaterial:sponge>);
rottenfleshblock.setBlockHardness(0.5);
rottenfleshblock.setBlockResistance(2.5);
rottenfleshblock.setToolLevel(0);
rottenfleshblock.register();

var saltpeterblock = VanillaFactory.createBlock("saltpeterblock", <blockmaterial:sand>);
saltpeterblock.setBlockHardness(0.5);
saltpeterblock.setBlockResistance(2.5);
saltpeterblock.setGravity(true);
saltpeterblock.setToolLevel(0);
saltpeterblock.register();

var saltblock = VanillaFactory.createBlock("saltblock", <blockmaterial:sand>);
saltblock.setBlockHardness(0.5);
saltblock.setBlockResistance(2.5);
saltblock.setGravity(true);
saltblock.setToolLevel(0);
saltblock.register();
