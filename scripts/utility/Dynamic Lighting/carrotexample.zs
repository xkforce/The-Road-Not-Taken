#reloadable

//template written with assistance from teksturepako, ACgaming, ChaosStrikez and WaitingIdly

import crafttweaker.event.PlayerTickEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.contenttweaker.Commands;

//this code controls spawning the appropriate lit air block on condition that the player is holding a carrot in their main hand.
//you can change this to be another block id, ore dictionary etc. and you can condition what hand the item is held in etc.
//event.player.world.getWorldTime controls how often the block is spawned. default: 2 ticks
//the command being executed spawns the lit air block as a 1x2x1 rectangular box at the player's location.
events.onPlayerTick(function(event as PlayerTickEvent) {
    if (isNull(event.player.world) || event.player.world.isRemote()) {
        return;
    }

    if (event.player.world.getWorldTime() % 2 == 0) {
        return;
    }
    val heldItem as IItemStack = event.player.mainHandHeldItem;
    val carrotexample = <minecraft:carrot>;

    if (!isNull(heldItem) && heldItem.matches(carrotexample)) {
        server.commandManager.executeCommandSilent(event.player, "fill ~ ~ ~ ~ ~1 ~ contenttweaker:orangeairlight 0 keep");
    }
});



