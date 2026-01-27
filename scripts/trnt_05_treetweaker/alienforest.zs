#loader treetweaker
#modloaded biomesoplenty pvj advancedrocketry

import mods.treetweaker.TreeFactory;

LOG.info("🌳 Creating Alienforest trees via TreeTweaker...");

var redmaple = TreeFactory.createTree("redmaple");
redmaple.setTreeType("OAK");
redmaple.setLeaf("biomesoplenty:leaves_2:11");
redmaple.setLog("pvj:log_maple");
redmaple.setMinHeight(4);
redmaple.setExtraHeight(3);
redmaple.addSapling();
redmaple.setGenBiome("advancedrocketry:alien_forest");
redmaple.register();
BLOCK_COUNTER.increment();

var orangemaple = TreeFactory.createTree("orangemaple");
orangemaple.setTreeType("OAK");
orangemaple.setLeaf("biomesoplenty:leaves_0:9");
orangemaple.setLog("pvj:log_maple");
orangemaple.setMinHeight(4);
orangemaple.setExtraHeight(3);
orangemaple.addSapling();
orangemaple.setGenBiome("advancedrocketry:alien_forest");
orangemaple.register();
BLOCK_COUNTER.increment();

var yellowmaple = TreeFactory.createTree("yellowmaple");
yellowmaple.setTreeType("OAK");
yellowmaple.setLeaf("biomesoplenty:leaves_0:8");
yellowmaple.setLog("pvj:log_maple");
yellowmaple.setMinHeight(4);
yellowmaple.setExtraHeight(3);
yellowmaple.addSapling();
yellowmaple.setGenBiome("advancedrocketry:alien_forest");
yellowmaple.register();
BLOCK_COUNTER.increment();
