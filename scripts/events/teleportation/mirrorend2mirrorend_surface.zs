#loader crafttweaker
#priority 0
#reloadable

/*
    Script by teksturepako
    This script teleports the player to dimension 186 if they are below y = 0 and not in the end dimension.
*/

import crafttweaker.event.PlayerTickEvent;

val tickTimer as int[] = [0];

events.onPlayerTick(function(event as PlayerTickEvent) {
    // only run when the world is loaded, we're on the serer side and the player is not in the end dimension
    if (isNull(event.player.world)
            || event.player.world.isRemote()
            || event.player.world.getDimension() != 201
    ) {
        return;
    }

    // only check player level every 20 ticks
    if (tickTimer[0] < 20) {
        tickTimer[0] += 1;
        return;
    }

    // teleport player to dimension 186 if they are below y = 0
    if (event.player.y < 0) {
        server.commandManager.executeCommandSilent(event.player, "cofh tpx @p ~ 250 ~ 186");
    }

    // reset tick timer
    tickTimer[0] = 0;
});
