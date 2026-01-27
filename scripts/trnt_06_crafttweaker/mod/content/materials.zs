#loader crafttweaker

LOG.info("💎 Adding recipes for materials...");

for id, mat in MATERIAL_REGISTRY {
    mat.registerCt();
}
