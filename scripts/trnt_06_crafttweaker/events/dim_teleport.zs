#loader crafttweaker
#reloadable

import crafttweaker.event.PlayerTickEvent;
import crafttweaker.player.IPlayer;

import scripts.trnt_02_setup.classes.counter.Counter;

zenClass Teleport {
    static TELEPORTS as Teleport[int]$orderly = {};

    val from as int;
    val to as int;
    val height as int;
    val destination as int;

    /**
     * Teleports the player to the given dimension.
     * @param _from The dimension to teleport from.
     * @param _to The dimension to teleport to.
     * @param _height The height the player needs to be at to teleport.
     * @param _destination The destination height to teleport to.
     */
    zenConstructor(_from as int, _to as int, _height as int, _destination as int) {
        from = _from;
        to = _to;
        height = _height;
        destination = _destination;
        Teleport.TELEPORTS[from] = this;
    }

    function teleport(player as IPlayer) as void {
        if ((height > 0 && player.y >= height) || (height <= 0 && player.y <= height)) {
            val command as string = `tpx @p ~ ${destination} ~ ${to}`;
            server.commandManager.executeCommandSilent(player, command);
        }
    }
}

val end2end_surface as Teleport = Teleport(1, -14, 0, 250);
val end2haunted_overworld as Teleport = Teleport(1, -3, 700, 250);
val mirroredend2mirrorend_surface as Teleport = Teleport(201, 186, 0, 250);
val mirrorend2mirrorhaunted_overworld as Teleport = Teleport(201, 197, 700, 250);

static playerTickTimer as Counter = Counter("playerTick");

events.register(function(event as PlayerTickEvent) {
    // only run when the world is loaded, we're on the serer side and dimension has a teleport
    if (isNull(event.player.world)
        || event.player.world.isRemote()
        || !Teleport.TELEPORTS.keys.contains(event.player.world.getDimension())
    ) return;

    // only check player level every 20 ticks
    if (playerTickTimer.lt(20)) {
        playerTickTimer.increment();
        return;
    }

    var teleport as Teleport = Teleport.TELEPORTS[event.player.world.getDimension()];
    teleport?.teleport(event.player);

    playerTickTimer.reset();
});
