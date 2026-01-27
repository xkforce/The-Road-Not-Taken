#loader preinit setup contenttweaker contentcreator treetweaker crafttweaker
#priority 2147483644

import mods.zenutils.ZenUtils;
/*
 * This script is only used to log the loading time for each stage.
 */
LOG.info(`[🚧 MODPACK 🚧] Entering stage *${ZenUtils.currentLoader().toUpperCase()}* after ${TIMER.timePassed()}!`);
