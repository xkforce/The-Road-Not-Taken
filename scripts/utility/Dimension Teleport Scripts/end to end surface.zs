#loader crafttweaker reloadable
#priority -10
#template written by teksturepako

import crafttweaker.event.PlayerTickEvent;

val tickTimer as int[] = [0];

events.onPlayerTick(function(event as PlayerTickEvent) {

    if (isNull(event.player.world)
            || event.player.world.isRemote()
            || event.player.world.getDimension() != 1
    ) {
        return;
    }

    if (tickTimer[0] > 20) {
        tickTimer[0] += 1;
        return;
    }

    if (event.player.y < 0) {
        server.commandManager.executeCommandSilent(event.player, "cofh tpx @p ~ 250 ~ -14");
    }

    tickTimer[0] = 0;
});
