#loader crafttweaker

import mods.zenutils.I18n;

for template in VARIANTS.templates {
    if (!itemLoaded(`contenttweaker:${template}template`)) {
        LOG.error(`Template *${template}template* does not exist!`);
        continue;
    }
    val name as string = I18n.format(`${MODPACK.id}.item.template.name`);
    val variant as string = I18n.format(`${MODPACK.id}.variant.${template}.name`, name);
    item(`contenttweaker:${template}template`).displayName = variant;
}
