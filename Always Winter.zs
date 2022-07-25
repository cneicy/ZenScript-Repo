//搭配静谧四季食用
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    server.commandManager.executeCommand(server, "/sereneseasons setseason MID_WINTER");
    server.commandManager.executeCommand(server, "/gamerule doSeasonCycle false");
    server.commandManager.executeCommand(server, "/weather rain");
    server.commandManager.executeCommand(server, "/gamerule doWeatherCycle false");
});
