#values
    #val weak_infusion_stone = <magicalcrops:magicalcrops_InfusionStoneWeak>;
    val weak_infusion_stone = <magicalcrops:magicalcrops_InfusionStoneWeak:*>;
    val regular_infusion_stone = <magicalcrops:magicalcrops_InfusionStoneRegular:*>;
    val strong_infusion_stone = <magicalcrops:magicalcrops_InfusionStoneStrong:*>;
    val extreme_infusion_stone = <magicalcrops:magicalcrops_InfusionStoneExtreme:*>;
    val master_infusion_stone = <magicalcrops:magicalcrops_InfusionStoneMaster>;
    val minicio_block = <magicalcrops:essence_storage>;
    val accio_block = <magicalcrops:essence_storage:1>;
    val crucio_block = <magicalcrops:essence_storage:2>;
    val imperio_block = <magicalcrops:essence_storage:3>;
    val salis_mundis = <Thaumcraft:ItemResource:14>;
    val nether_star = <minecraft:nether_star>;
    val imbued_slate = <AWWayofTime:imbuedSlate>;
    val ethereal_slate = <AWWayofTime:bloodMagicBaseItems:27>;
    val elementum_ingot = <Botania:manaResource:7>;
    val terrasteel_ingot = <Botania:manaResource:4>;
    val void_metal_ingot = <Thaumcraft:ItemResource:16>;
    val ichorium = <ThaumicTinkerer:kamiResource:2>;

#removals
    recipes.remove(weak_infusion_stone);
    recipes.remove(regular_infusion_stone);
    recipes.remove(strong_infusion_stone);
    recipes.remove(extreme_infusion_stone);
    recipes.remove(master_infusion_stone);

#additions
    #weak infusion stone
        recipes.addShaped(<magicalcrops:magicalcrops_InfusionStoneWeak>,[
        [minicio_block, salis_mundis, minicio_block],
        [salis_mundis, nether_star, salis_mundis],
        [minicio_block, salis_mundis, minicio_block]]);
    
    #regular infusion stone
        recipes.addShaped(regular_infusion_stone,[
        [accio_block, imbued_slate, accio_block],
        [imbued_slate, weak_infusion_stone, imbued_slate],
        [accio_block, imbued_slate, accio_block]]);

    #strong infusion stone
        recipes.addShaped(strong_infusion_stone,[
        [null, null, null],
        [null, null, null],
        [null, null, null]]);

    #extreme infusion stone
        recipes.addShaped(extreme_infusion_stone,[
        [null, null, null],
        [null, null, null],
        [null, null, null]]);

    #weak infusion stone
        recipes.addShaped(master_infusion_stone,[
        [null, null, null],
        [null, null, null],
        [null, null, null]]);

    mods.avaritia.ExtremeCrafting.addShaped(<magicalcrops:magicalcrops_InfusionStoneMaster>, [
        [null, null, null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null, null, null], 
        [null, null, null, null, null, null, null, null, null], 
        [null, null, null, null, null, null, null, null, null], 
        [null, null, null, null, null, null, null, null, null], 
        [null, null, null, null, null, null, null, null, null], 
        [null, null, null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null, null, null], 
        [null, null, null, null, null, null, null, null, null]]);