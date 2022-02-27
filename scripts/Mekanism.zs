#variables
 val hsla = <RotaryCraft:rotarycraft_item_shaftcraft:1>;
val quartzglass = <EnderIO:blockFusedQuartz:1>;
val steelcasing = <Mekanism:BasicBlock:8>;
val reactorframe = <MekanismGenerators:Reactor:1>;
val CdInAg = <ReactorCraft:reactorcraft_item_crafting:3>;
val reactglass = <MekanismGenerators:ReactorGlass>;

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

#additions
    #steel casing
        recipes.addShaped(<Mekanism:BasicBlock:8>,[
        [hsla, quartzglass, hsla],
        [quartzglass, <Mekanism:Ingot:1>, quartzglass],
        [hsla, quartzglass, hsla]]);

    #reactor frame
        recipes.addShaped(reactorframe *4,[
        [CdInAg, steelcasing, CdInAg],
        [steelcasing, <valcore:item.quantum_alloy>, steelcasing],
        [CdInAg, steelcasing, CdInAg]]);

    #reactor controller
        recipes.addShaped(<MekanismGenerators:Reactor>,[
        [<valcore:item.quantum_circuit>, <RotaryCraft:rotarycraft_block_blastglass>, <valcore:item.quantum_circuit>],
        [reactorframe, <Mekanism:GasTank>.withTag({tier: 3}), reactorframe],
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
        [reactorframe, <valcore:item.quantum_circuit>, reactorframe],
        [null, reactorframe, null]]);

    #Qu-Bit circuit
        recipes.addShaped(<valcore:item.quantum_circuit>,[
        [null, null, null],
        [<valcore:item.quantum_alloy>, <Mekanism:ControlCircuit:3>, <valcore:item.quantum_alloy>],
        [null, null, null]]);