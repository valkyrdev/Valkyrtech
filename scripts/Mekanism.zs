#variables
    val hsla = <RotaryCraft:rotarycraft_item_shaftcraft:1>;
    val quartzglass = <EnderIO:blockFusedQuartz:1>;
    val steelcasing = <Mekanism:BasicBlock:8>;
    val reactorframe = <MekanismGenerators:Reactor:1>;
    val CdInAg = <ReactorCraft:reactorcraft_item_crafting:3>;
    val reactglass = <MekanismGenerators:ReactorGlass>;
    val tungsteel = <RotaryCraft:rotarycraft_item_compacts:12>;
    val greencircuit = <Mekanism:ControlCircuit>;
    val redcircuit = <Mekanism:ControlCircuit:1>;
    val bluecircuit = <Mekanism:ControlCircuit:2>;
    val purplecircuit = <Mekanism:ControlCircuit:3>;
    val qcircuit = <valcore:item.quantum_circuit>;
    val redalloy = <Mekanism:EnrichedAlloy>;
    val bluealloy = <Mekanism:ReinforcedAlloy>;
    val purplealloy = <Mekanism:AtomicAlloy>;
    val qalloy = <valcore:item.quantum_alloy>;
    val saw = <RotaryCraft:rotarycraft_item_borecraft:7>;
    val lens = <RotaryCraft:rotarycraft_item_misccraft:1>;
    val circuit = <RotaryCraft:rotarycraft_item_borecraft:4>;
    val powermod = <RotaryCraft:rotarycraft_item_misccraft:2>;
    val screen = <RotaryCraft:rotarycraft_item_borecraft:5>;
    val heatcoil = <valcore:item.heatcoil>;
    val gen = <RotaryCraft:rotarycraft_item_misccraft:8>;
    val gcoil = <RotaryCraft:rotarycraft_item_enginecraft:8>;
    val mixer = <RotaryCraft:rotarycraft_item_borecraft:6>;
    val compressor = <RotaryCraft:rotarycraft_item_enginecraft:1>;
    val basepanel = <RotaryCraft:rotarycraft_item_shaftcraft>;
    val telecore = <Mekanism:TeleportationCore>;
    val drill = <RotaryCraft:rotarycraft_item_borecraft>;
    val Generator = <RotaryCraft:rotarycraft_item_misccraft:8>;
    val cylinder = <RotaryCraft:rotarycraft_item_enginecraft:5>;
    val sorter = <Mekanism:MachineBlock:15>;
    val osmium = <Mekanism:Ingot:1>;
    val steelshaft = <RotaryCraft:rotarycraft_item_gearcraft>;
    val condenser = <RotaryCraft:rotarycraft_item_enginecraft:7>;
    val elecore = <Mekanism:ElectrolyticCore>;
    val liquidtank =  <Mekanism:MachineBlock2:11>;
    val gastank = <Mekanism:GasTank>;
    val solarpanel = <MekanismGenerators:SolarPanel>;
    val solgen = <MekanismGenerators:Generator:1>;
    val mirror = <RotaryCraft:rotarycraft_item_misccraft:7>;


#removals
    recipes.remove(<MekanismGenerators:Generator:7>);
    recipes.remove(<MekanismGenerators:Generator:8>);
    recipes.remove(<MekanismGenerators:Generator:9>);
    recipes.remove(<MekanismGenerators:Generator:10>);
    recipes.remove(<MekanismGenerators:Generator:11>);
    recipes.remove(<MekanismGenerators:Generator:12>);
    recipes.remove(<MekanismGenerators:Generator:13>);
    recipes.remove(<MekanismGenerators:TurbineBlade>);
    recipes.remove(<Mekanism:BasicBlock2:7>);
    recipes.remove(<Mekanism:BasicBlock2:8>);
    recipes.remove(<Mekanism:BasicBlock2:6>);
    recipes.remove(<Mekanism:BasicBlock2:5>);
    recipes.remove(steelcasing);
    recipes.remove(reactorframe);
    recipes.remove(<MekanismGenerators:Reactor>);
    recipes.remove(reactglass);
    recipes.remove(<MekanismGenerators:ReactorGlass:1>);
    recipes.remove(<MekanismGenerators:Reactor:3>);
    recipes.remove(<Mekanism:BasicBlock:7>);
    recipes.remove(<Mekanism:MachineBlock>);
    recipes.remove(<Mekanism:MachineBlock:1>);
    recipes.remove(<Mekanism:MachineBlock:3>);
    recipes.remove(<Mekanism:MachineBlock:4>);
    recipes.remove(<Mekanism:MachineBlock:8>);
    recipes.remove(<Mekanism:MachineBlock:9>);
    recipes.remove(<Mekanism:MachineBlock:10>);
    recipes.remove(<Mekanism:MachineBlock:11>);
    recipes.remove(<Mekanism:MachineBlock2>);
    recipes.remove(<Mekanism:MachineBlock2:2>);
    recipes.remove(<Mekanism:MachineBlock:14>);
    recipes.remove(<Mekanism:MachineBlock2:3>);
    recipes.remove(<Mekanism:MachineBlock2:4>);
    recipes.remove(<Mekanism:MachineBlock2:5>);
    recipes.remove(<Mekanism:MachineBlock2:6>);
    recipes.remove(<Mekanism:MachineBlock2:7>);
    recipes.remove(<Mekanism:MachineBlock2:7>);
    recipes.remove(<Mekanism:MachineBlock2:8>);
    recipes.remove(<Mekanism:MachineBlock2:10>);
    recipes.remove(<Mekanism:MachineBlock3:1>);
    #recipes.remove(<Mekanism:MachineBlock3:3>);
    #recipes.remove(<Mekanism:MachineBlock3:3>);
    #recipes.remove(<Mekanism:MachineBlock3:6>);
    recipes.remove(<Mekanism:MachineBlock2:13>);
    recipes.remove(<Mekanism:MachineBlock2:14>);
    recipes.remove(<Mekanism:MachineBlock3>);
    recipes.remove(telecore);
    recipes.remove(<MekanismGenerators:Generator:5>);
    recipes.remove(<MekanismGenerators:Generator:6>);
    recipes.remove(<MekanismGenerators:SolarPanel>);
    recipes.remove(<Mekanism:MachineBlock>);
    recipes.remove(<Mekanism:MachineBlock2:3>);
    #recipes.remove();
    #recipes.remove();
    #recipes.remove();
    #recipes.remove();
    #recipes.remove();

#additions
    #steel casing
        recipes.addShaped(<Mekanism:BasicBlock:8>,[
        [hsla, quartzglass, hsla],
        [quartzglass, osmium, quartzglass],
        [hsla, quartzglass, hsla]]);

    #reactor frame
        recipes.addShaped(reactorframe *4,[
        [CdInAg, steelcasing, CdInAg],
        [steelcasing, qalloy, steelcasing],
        [CdInAg, steelcasing, CdInAg]]);

    #reactor controller
        recipes.addShaped(<MekanismGenerators:Reactor>,[
        [qcircuit, <RotaryCraft:rotarycraft_block_blastglass>, qcircuit],
        [reactorframe, gastank.withTag({tier: 3}), reactorframe],
        [reactorframe, reactorframe, reactorframe]]);

    #reactor glass 
        recipes.addShaped(reactglass *12,[
        [null, reactorframe, null],
        [reactorframe, <RotaryCraft:rotarycraft_block_blastglass>, reactorframe],
        [null, reactorframe, null]]);

    #laser focus matrix
        recipes.addShaped(<MekanismGenerators:ReactorGlass:1>,[
        [reactglass, reactglass, reactglass],
        [reactglass, null, reactglass],
        [reactglass, reactglass, reactglass]]); 

    #reactor port
        recipes.addShaped(<MekanismGenerators:Reactor:3> *2,[
        [null, reactorframe, null],
        [reactorframe, qcircuit, reactorframe],
        [null, reactorframe, null]]);

    #Qu-Bit circuit
        recipes.addShaped(qcircuit,[
        [null, null, null],
        [qalloy, <Mekanism:ControlCircuit:3>, qalloy],
        [null, null, null]]);

        recipes.addShaped(qcircuit,[
        [qalloy, <Mekanism:ControlCircuit:3>, qalloy],
        [null, null, null],
        [null, null, null]]);

        recipes.addShaped(qcircuit,[
        [null, null, null],
        [null, null, null],
        [qalloy, <Mekanism:ControlCircuit:3>, qalloy]]);
    #Teleporter frame 
        recipes.addShaped(<Mekanism:BasicBlock:7>,[
        [tungsteel, tungsteel, tungsteel],
        [tungsteel, qalloy, tungsteel],
        [tungsteel, tungsteel, tungsteel]]);

    #enrichment chamber
        recipes.addShaped(<Mekanism:MachineBlock>,[
        [hsla, greencircuit, hsla],
        [drill, steelcasing, mixer],
        [hsla, Generator, hsla]]);

    #enrichment chamber
        recipes.addShaped(<Mekanism:MachineBlock:1>,[
        [redcircuit, steelcasing, redcircuit],
        [mixer, steelshaft, mixer],
        [redalloy, cylinder, redalloy]]);

    #crusher
        recipes.addShaped(<Mekanism:MachineBlock:3>,[
        [greencircuit, powermod, greencircuit],
        [saw, steelcasing, saw],
        [redalloy, Generator, redalloy]]);

    #digiminer

        recipes.addShaped(<Mekanism:MachineBlock:4>,[
        [qalloy, sorter, qalloy],
        [telecore, steelcasing, telecore],
        [drill, qcircuit, drill]]);

    #mettalurgic infuser

        recipes.addShaped(<Mekanism:MachineBlock:8>,[
        [hsla, <RotaryCraft:rotarycraft_item_machine:45>, hsla],
        [circuit, osmium, circuit],
        [hsla, heatcoil, hsla]]);

    #purifacation chamber 
        recipes.addShaped(<Mekanism:MachineBlock:9>,[
        [purplealloy, osmium, purplealloy],
        [purplealloy, <Mekanism:MachineBlock>, purplealloy],
        [purplecircuit, compressor, purplecircuit]]);

    #energized smelter
        recipes.addShaped(<Mekanism:MachineBlock:10>,[
        [redalloy, greencircuit, redalloy],
        [heatcoil, steelcasing, heatcoil],
        [osmium, greencircuit, osmium]]);
    #Teleporter
        recipes.addShaped(<Mekanism:MachineBlock:11>,[
        [qcircuit, steelcasing, qcircuit],
        [steelcasing, telecore, steelcasing],
        [qcircuit, steelcasing, qcircuit]]);

    #rotary condenser
        recipes.addShaped(<Mekanism:MachineBlock2>,[
        [redalloy, redcircuit, redalloy],
        [liquidtank, steelcasing, gastank],
        [compressor, redcircuit, condenser]]);

    #chemical infuser
        recipes.addShaped(<Mekanism:MachineBlock2:2>,[
        [redalloy, osmium, redalloy],
        [gastank, mixer, gastank],
        [redcircuit, steelcasing, redcircuit]]);

    #chargepad
        recipes.addShaped(<Mekanism:MachineBlock:14>,[
        [null, <Mekanism:EnergyTablet>, null],
        [osmium, gcoil, osmium],
        [basepanel, basepanel, basepanel]]);

    #chemical injector chamber
        recipes.addShaped(<Mekanism:MachineBlock2:3>,[
        [bluealloy, bluecircuit, bluealloy],
        [mixer, <Mekanism:MachineBlock:9>, mixer],
        [bluealloy, bluecircuit, bluealloy]]);

    #electrolytic seperator
        recipes.addShaped(<Mekanism:MachineBlock2:4>,[
        [hsla, greencircuit, hsla],
        [redalloy, steelcasing, redalloy],
        [hsla, elecore, hsla]]);

    #Precision sawmill
        recipes.addShaped(<Mekanism:MachineBlock2:5>,[
        [hsla, greencircuit, hsla],
        [saw, steelcasing, saw],
        [hsla, greencircuit, hsla]]);

    #Chemical dissoluion camber
        recipes.addShaped(<Mekanism:MachineBlock2:6>,[
        [purplealloy, osmium, purplealloy],
        [liquidtank, steelcasing, gastank],
        [purplecircuit, mixer, purplecircuit]]);

    #Chemical washer
        recipes.addShaped(<Mekanism:MachineBlock2:6>,[
        [redcircuit, liquidtank, redcircuit],
        [liquidtank, steelcasing, liquidtank],
        [redalloy, osmium, redalloy]]);

    #Chemical crystalizer
        recipes.addShaped(<Mekanism:MachineBlock2:8>,[
        [purplealloy, condenser, purplealloy],
        [liquidtank, steelcasing, bluecircuit],
        [heatcoil, osmium, heatcoil]]);

    #pressurized reaction chamber
        recipes.addShaped(<Mekanism:MachineBlock2:10>,[
        [gastank, osmium, gastank],
        [redcircuit, <Mekanism:MachineBlock>, redcircuit],
        [osmium, liquidtank, osmium]]);

    #Solar Neutron activator
        recipes.addShaped(<Mekanism:MachineBlock3:1>,[
        [solarpanel, basepanel, solarpanel],
        [gastank, purplecircuit, gastank],
        [osmium, steelcasing, osmium]]);

    #Oredictionificator
        recipes.addShaped(<Mekanism:MachineBlock3:3>,[
        [hsla, <minecraft:glass_pane>, hsla],
        [greencircuit, <Mekanism:Dictionary>, greencircuit],
        [hsla, <minecraft:chest>, hsla]]);

    #Resistive Heater
        recipes.addShaped(<Mekanism:MachineBlock3:3>,[
        [hsla, redalloy, hsla],
        [heatcoil, steelcasing, heatcoil],
        [hsla, <Mekanism:EnergyTablet>, hsla]]);

    #formulaic heater
        recipes.addShaped(<Mekanism:MachineBlock3:3>,[
        [hsla, redalloy, hsla],
        [heatcoil, steelcasing, heatcoil],
        [hsla, <Mekanism:EnergyTablet>, hsla]]);
    
    #Fuelwood heater
        recipes.addShaped(<Mekanism:MachineBlock3:6>,[
        [hsla, greencircuit, hsla],
        [<minecraft:furnace>, steelcasing, <minecraft:furnace>],
        [hsla, hsla, hsla]]);

     #Laser
        recipes.addShaped(<Mekanism:MachineBlock2:13>,[
        [purplealloy, purplecircuit, null],
        [purplealloy, steelcasing, lens],
        [purplealloy, powermod, null]]);

    #laser amplifier
        recipes.addShaped(<Mekanism:MachineBlock2:14>,[
        [hsla, hsla, hsla],
        [hsla, <Mekanism:EnergyCube>.withTag({tier: "Elite"}), lens],
        [hsla, hsla, hsla]]);

    #quanum entangloporter
        recipes.addShaped(<Mekanism:MachineBlock3>,[
        [<ReactorCraft:reactorcraft_item_magnet:7>, qcircuit, <ReactorCraft:reactorcraft_item_magnet:7>],
        [qalloy, telecore, qalloy],
        [<Mekanism:PartTransmitter:7>, <Mekanism:PartTransmitter:3>, <Mekanism:PartTransmitter:15>]]); 

    #teleportation core
        recipes.addShaped(<Mekanism:TeleportationCore>,[
        [null, purplealloy, null],
        [lens, <appliedenergistics2:item.ItemMultiMaterial:47>, lens],
        [null, purplealloy, null]]); 

    #Advanced solar generator
        recipes.addShaped(<MekanismGenerators:Generator:5>,[
        [solgen, bluealloy, solgen],
        [solgen, bluealloy, solgen],
        [hsla, hsla, hsla]]); 

    #Wind Generator
        recipes.addShaped(<MekanismGenerators:Generator:6>,[
        [null, <RotaryCraft:rotarycraft_item_misccraft:5>, null],
        [<RotaryCraft:rotarycraft_item_misccraft:5>, redalloy, <RotaryCraft:rotarycraft_item_misccraft:5>],
        [powermod, greencircuit, powermod]]); 

    #Solar Panel
        recipes.addShaped(<MekanismGenerators:SolarPanel>,[
        [mirror, mirror, mirror],
        [redalloy, powermod, redalloy],
        [basepanel, basepanel, basepanel]]); 



        
