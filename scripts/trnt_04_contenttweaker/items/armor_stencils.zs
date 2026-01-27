#loader contenttweaker

for mat in MATERIALS {
    val stencilName as string = `${mat}stencil`;
    if (MATERIALS.indexOf(mat) == 0) {
        COT_UTILS.createCreativeTabAndItem(stencilName, `${MODPACK.id}.armorstencils`);
    } else {
        COT_UTILS.createItem(stencilName);
    }
}
COT_UTILS.resetCreativeTab();
