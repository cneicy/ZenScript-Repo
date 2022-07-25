//不导库了，自己看着办。
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var pos as IBlockPos = event.position;
    var mainItem as IItemStack = player.currentItem;

    if(!world.remote && <quark:black_ash>.matches(mainItem) && world.getBlockState(pos) == <blockstate:minecraft:grass>) {
        if(world.random.nextInt(0,100)>85){
            world.setBlockState(<blockstate:minecraft:dirt>, pos);
        }
        mainItem.mutable().shrink(1);
        player.sendChat(game.localize("TML."));
        var dust as IItemStack[]=[
            <ebwizardry:spectral_dust:1>,
            <ebwizardry:spectral_dust:2>,
            <ebwizardry:spectral_dust:3>,
            <ebwizardry:spectral_dust:4>,
            <ebwizardry:spectral_dust:5>,
            <ebwizardry:spectral_dust:6>,
            <ebwizardry:spectral_dust:7>
        ];
        player.give(dust[world.random.nextInt(0,6)]);
    }
});
