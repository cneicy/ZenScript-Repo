//ref实现mek类热力发电机被动模式
//写多向的话写穷举或循环就行。
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import requious.fluid.IWorldFunction;
import crafttweaker.world.IBlockPos;
var meklike_heat_generator = <assembly:item_gate>;
meklike_heat_generator.setEnergySlot(1, 1, ComponentFace.up(), 7000)
    .allowBattery(true, true, true)
    .setGroup("output");

var lavapower=AssemblyRecipe.create(function(container){
    container.addEnergyOutput("output", 4);
}).requireWorldCondition("group", function(machineContainer) {
    var world as IWorld = machineContainer.world;
    var pos as IBlockPos = machineContainer.pos;
    if(world.getBlockState(pos.getOffset(IFacing.down(),1))==<blockstate:minecraft:lava>){
        return true;
    }
    return false;
},1);

meklike_heat_generator.addRecipe(lavapower);
