import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.event.EntityLivingHurtEvent;
#script by Clay Duplicator

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent) {
    val rabbitfalldamage = event.entity;

    if (!(rabbitfalldamage instanceof IPlayer)) {
        if(event.damageSource.damageType == "fall") {
            if(rabbitfalldamage.definition.id == "minecraft:rabbit") {
                event.cancel();
            }
        }
    }
}
);

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent) {
    val wasplavadamage = event.entity;

    if (!(wasplavadamage instanceof IPlayer)) {
        if(event.damageSource.damageType == "lava") {
            if(wasplavadamage.definition.id == "biomesoplenty:wasp") {
                event.cancel();
            }
        }
    }
}
);

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent) {
    val wasponfiredamage = event.entity;

    if (!(wasponfiredamage instanceof IPlayer)) {
        if(event.damageSource.damageType == "onFire") {
            if(wasponfiredamage.definition.id == "biomesoplenty:wasp") {
                event.cancel();
            }
        }
    }
}
);

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent) {
    val waspinfiredamage = event.entity;

    if (!(waspinfiredamage instanceof IPlayer)) {
        if(event.damageSource.damageType == "inFire") {
            if(waspinfiredamage.definition.id == "biomesoplenty:wasp") {
                event.cancel();
            }
        }
    }
}
);
