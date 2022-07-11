#imports
	import minetweaker.data.IData;
	import minetweaker.item.IItemStack;

# vals
	val frame1 = <ThermalExpansion:Frame>;
	val frame2 = <ThermalExpansion:Frame:1>;
	val frame3 = <ThermalExpansion:Frame:2>;
	val frame4 = <ThermalExpansion:Frame:3>;
	val frames = [<ThermalExpansion:Frame>, <ThermalExpansion:Frame:1>, <ThermalExpansion:Frame:2>, <ThermalExpansion:Frame:3>] as IItemStack[];
	val impeller = <RotaryCraft:rotarycraft_item_enginecraft>;
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
	val bedalloy = <RotaryCraft:rotarycraft_item_compacts:3>;
	val tier = [{Level: 0}, {Level: 1}, {Level: 2}, {Level: 3}] as IData;
	val tank = [<ThermalExpansion:Tank:1>, <ThermalExpansion:Tank:2>, <ThermalExpansion:Tank:3>, <ThermalExpansion:Tank:4>]  as IItemStack[];
	val machine = [<ThermalExpansion:Machine>, <ThermalExpansion:Machine:1>, <ThermalExpansion:Machine:2>, <ThermalExpansion:Machine:3>, <ThermalExpansion:Machine:4>, <ThermalExpansion:Machine:5>, <ThermalExpansion:Machine:6>, <ThermalExpansion:Machine:7>, <ThermalExpansion:Machine:8>, <ThermalExpansion:Machine:9>, <ThermalExpansion:Machine:10>]  as IItemStack[];

#removals
	recipes.remove(<ThermalExpansion:Frame:*>);
	recipes.remove(<ThermalExpansion:Machine:*>);
	mods.thermalexpansion.Smelter.removeRecipe(<ore:ingotNickel>, <ore:ingotCopper>);
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
					for i, frame in frames {
			val tiers = tier[i];
			 recipes.addShaped(<ThermalExpansion:Machine>.withTag(tiers),
			 [[powermod, <minecraft:furnace>, circuit],
			 [<RotaryCraft:rotarycraft_item_machine:67>, frame, <RotaryCraft:rotarycraft_item_machine:67>],
			 [hslagear, gen, hslagear]]);
			 }
        #pulverizer
            for i, frame in frames {
			val tiers = tier[i];
			 recipes.addShaped(<ThermalExpansion:Machine:1>.withTag(tiers),
			 [[powermod, screen, circuit],
			 [saw, frame, saw],
			 [hslagear, gen, hslagear]]);
			 }
        #induction smelter
			for i, frame in frames {
			val tiers = tier[i];
			 recipes.addShaped(<ThermalExpansion:Machine:3>.withTag(tiers),
			 [[circuit, <RotaryCraft:rotarycraft_item_machine:45>, circuit],
			 [heatcoil, frame, heatcoil],
			 [copperwire, powermod, copperwire]]);
			 }
			
        #magma crucible
            for i, frame in frames {
			val tiers = tier[i];
            val tanks = tank[i];
			 recipes.addShaped(<ThermalExpansion:Machine:4>.withTag(tiers),
			 [[circuit, <RotaryCraft:rotarycraft_item_machine:91>, tanks],
			 [heatcoil, frame, heatcoil],
			 [copperwire, powermod, copperwire]]);
			 }
        #fluid transposer
			for i, frame in frames {
			val tiers = tier[i];
            val tanks = tank[i];
			 recipes.addShaped(<ThermalExpansion:Machine:5>.withTag(tiers),
			 [[circuit, tanks, powermod],
			 [<RotaryCraft:rotarycraft_item_machine:16>, frame, <RotaryCraft:rotarycraft_item_machine:16>],
			 [hslagear, gen, hslagear]]);
			 }
			 
        #energetic infuser
			for i, frame in frames {
			val tiers = tier[i];
			 recipes.addShaped(<ThermalExpansion:Machine:10>.withTag(tiers),
			 [[gcoil, circuit, gcoil],
			 [powermod, frame, powermod],
			 [gcoil, screen, gcoil]]);
			 }
    #non-rf machines
		
		#aqueous accumulator
			for i, frame in frames {
			val tiers = tier[i];
            val tanks = tank[i];
			 recipes.addShaped(<ThermalExpansion:Machine:8>.withTag(tiers),
			 [[impeller, <RotaryCraft:rotarycraft_item_machine:16>, tanks],
			 [hslashaft, frame, hslashaft],
			 [hslagear, gen, hslagear]]);
			 }
		#autonomas activator
	#non machines
		
		#tesseract	
			recipes.addShaped(<ThermalExpansion:Frame:10>,
				[[bedalloy, lens, bedalloy],
				[lens, frame4, lens],
				[bedalloy, lens, bedalloy]]);

			recipes.addShaped(<ThermalExpansion:Tesseract>,
				[[circuit, <appliedenergistics2:item.ItemMultiMaterial:47>, powermod],
				[<ReactorCraft:reactorcraft_item_magnet:7>, <ThermalExpansion:Frame:11>, <ReactorCraft:reactorcraft_item_magnet:7>],
				[<ThermalDynamics:ThermalDynamics_16:6>, <ThermalDynamics:ThermalDynamics_0:6>, <ThermalDynamics:ThermalDynamics_32:4>]]);
			
			
			
			
			
		
	#upgrades
			
			#hardened
				for i, machines in machine {
				recipes.addShaped(machines.withTag(tier[1]), 
				[[belt, <valcore:item.invarcomp>, belt], 
				[<valcore:item.invarcomp>, machines.onlyWithTag(tier[0]), <valcore:item.invarcomp>], 
				[hub, <valcore:item.invarcomp>, hub]]);
				}
			#reinforced
				for i, machines in machine {
				recipes.addShaped(machines.withTag(tier[2]), 
				[[powermod, <valcore:item.signaliumcomp>, powermod], 
				[<valcore:item.signaliumcomp>, machines.onlyWithTag(tier[1]), <valcore:item.signaliumcomp>], 
				[circuit, <valcore:item.signaliumcomp>, circuit]]);
				}
			#resonant
			for i, machines in machine {
				recipes.addShaped(machines.withTag(tier[3]), 
				[[<ReactorCraft:reactorcraft_item_crafting:6>, <valcore:item.enderiumcomp>, <ReactorCraft:reactorcraft_item_crafting:6>], 
				[<valcore:item.enderiumcomp>, machines.onlyWithTag(tier[2]), <valcore:item.enderiumcomp>], 
				[<ThermalFoundation:material:516>, <valcore:item.enderiumcomp>, <ThermalFoundation:material:516>]]);
				}
	#usage
		#fluid transposer
				mods.thermalexpansion.Transposer.addFillRecipe(4000, <ThermalDynamics:ThermalDynamics_0:7>,  <ThermalDynamics:ThermalDynamics_0:6>, <liquid:rc liquid nitrogen> * 500);
		#Induction Smelter
			#composites
				mods.thermalexpansion.Smelter.addRecipe(800, <ThermalFoundation:material:72>, <RotaryCraft:rotarycraft_item_compacts:11>, <valcore:item.invarcomp>*2);
				mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:74>, <RotaryCraft:rotarycraft_item_compacts:9>, <valcore:item.signaliumcomp>*2);
				mods.thermalexpansion.Smelter.addRecipe(7200, <ThermalFoundation:material:76>, <RotaryCraft:rotarycraft_item_compacts:12>, <valcore:item.enderiumcomp>*2);
			#other alloys
				mods.thermalexpansion.Smelter.addRecipe(800, <ThermalFoundation:material:68>, <ThermalFoundation:material:64>, <valcore:item.cupronickel>*2);
				mods.thermalexpansion.Smelter.addRecipe(800, <ThermalFoundation:material:65>, <ThermalFoundation:material:67>, <valcore:item.solderingot>*2);
	#resources
		recipes.addShaped(<ThermalFoundation:material:516>,
			[[null, <ThermalFoundation:material:515>, null], 
			[<ThermalFoundation:material:512>, <EnderIO:itemMaterial:2>, <ThermalFoundation:material:514>],
			[null, <ThermalFoundation:material:513>, null]]);
