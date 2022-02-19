#imports
import minetweaker.data.IData;
import minetweaker.item.IItemStack;
# vars

val frame1 = <ThermalExpansion:Frame>;
val frame2 = <ThermalExpansion:Frame:1>;
val frame3 = <ThermalExpansion:Frame:2>;
val frame4 = <ThermalExpansion:Frame:3>;
val frames = [<ThermalExpansion:Frame>, <ThermalExpansion:Frame:1>, <ThermalExpansion:Frame:2>, <ThermalExpansion:Frame:3>] as IItemStack[];
val impellor = <RotaryCraft:rotarycraft_item_enginecraft>;
val gcoil = <RotaryCraft:rotarycraft_item_enginecraft:8>;
val hub = <RotaryCraft:rotarycraft_item_misccraft:6>;
val belt = <RotaryCraft:rotarycraft_item_borecraft:9>;
val gen = <RotaryCraft:rotarycraft_item_misccraft:8>;
val hsla = <RotaryCraft:rotarycraft_item_shaftcraft:1>;
val hslagear = <RotaryCraft:rotarycraft_item_gearcraft:1>;
val hslashaft = <RotaryCraft:rotarycraft_item_gearcraft>;
val circuit = <RotaryCraft:rotarycraft_item_borecraft:4>;
val powermod = <RotaryCraft:rotarycraft_item_misccraft:2>;
val screen = <RotaryCraft:rotarycraft_item_borecraft:5>;
val heatcoil = <valcore:item.heatcoil>;
val copperwire = <ElectriCraft:electricraft_item_wire:4>;
val saw = <RotaryCraft:rotarycraft_item_borecraft:7>;
val lens = <RotaryCraft:rotarycraft_item_misccraft:1>;
val tier = [{Level: 0}, {Level: 1}, {Level: 2}, {Level: 3}] as IData;
#removals
recipes.remove(frame1);
recipes.remove(frame2);
recipes.remove(frame3);
recipes.remove(frame4);
recipes.remove(<ThermalExpansion:Machine:3>);
#additions

    #frames
    recipes.addShaped(frame1, 
        [[hsla, <minecraft:glass>, hsla], 
        [<minecraft:glass>, hslagear, <minecraft:glass>], 
        [hsla, <minecraft:glass>, hsla]]);
    recipes.addShaped(frame2, 
        [[belt, <valcore:item.invarcomp>, belt], 
        [<valcore:item.invarcomp>, frame1, <valcore:item.invarcomp>], 
        [hub, <valcore:item.invarcomp>, hub]]);
	recipes.addShaped(frame3, 
        [[powermod, <valcore:item.signaliumcomp>, powermod], 
        [<valcore:item.signaliumcomp>, frame2, <valcore:item.signaliumcomp>], 
        [circuit, <valcore:item.signaliumcomp>, circuit]]);
	recipes.addShaped(frame4, 
        [[<ReactorCraft:reactorcraft_item_crafting:6>, <valcore:item.enderiumcomp>, <ReactorCraft:reactorcraft_item_crafting:6>], 
        [<valcore:item.enderiumcomp>, frame3, <valcore:item.enderiumcomp>], 
        [<ThermalFoundation:material:516>, <valcore:item.enderiumcomp>, <ThermalFoundation:material:516>]]);
	
    #rf machines

        #redstone furnace
		
        #pulverizer

        #induction smelter
			for i, Level in tier {
			val frame = frames[i];
			val tiers = tier[i];
			 recipes.addShaped(<ThermalExpansion:Machine:3>.withTag(tiers),
			 [[circuit, <RotaryCraft:rotarycraft_item_machine:45>, circuit],
			 [heatcoil, frame, heatcoil],
			 [copperwire, powermod, copperwire]]);
			 }
			
        #magma crucible

        #fluid transposer

            mods.thermalexpansion.Transposer.addFillRecipe(4000, <ThermalDynamics:ThermalDynamics_0:7>,  <ThermalDynamics:ThermalDynamics_0:6>, <liquid:rc liquid nitrogen> * 500);

        #energetic infuser

    #non-rf machines
