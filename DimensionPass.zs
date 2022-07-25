//维度通行证
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityTravelToDimensionEvent;
import crafttweaker.entity.IEntityItem;
events.onEntityTravelToDimension(function(event as EntityTravelToDimensionEvent){
    val entity as IEntity = event.entity;
    if (!entity.world.remote && entity instanceof IEntityLivingBase) {
        val living as IEntityLivingBase = entity;
        if (event.dimension == 0 && !<contenttweaker:key>.matches(living.mainHandHeldItem)) {
            event.cancel();
            entity.sendMessage(game.localize("ans.message.comeback.faild"));
        }
    }
});
