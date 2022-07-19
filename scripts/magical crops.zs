#imports
    import minetweaker.data.IData;
    import minetweaker.item.IItemStack;

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
    val seeds = [<magicalcrops:magicalcrops_AirSeeds>, <magicalcrops:magicalcrops_CoalSeeds>, <magicalcrops:magicalcrops_DyeSeeds>, <magicalcrops:magicalcrops_EarthSeeds>, <magicalcrops:magicalcrops_FireSeeds>, <magicalcrops:magicalcrops_NatureSeeds>, <magicalcrops:magicalcrops_WaterSeeds>, <magicalcrops:magicalcrops_RedstoneSeeds>, <magicalcrops:magicalcrops_GlowstoneSeeds>, <magicalcrops:magicalcrops_ObsidianSeeds>, <magicalcrops:magicalcrops_NetherSeeds>, <magicalcrops:magicalcrops_IronSeeds>, <magicalcrops:magicalcrops_GoldSeeds>, <magicalcrops:magicalcrops_LapisSeeds>, <magicalcrops:magicalcrops_ExperienceSeeds>, <magicalcrops:magicalcrops_QuartzSeeds>, <magicalcrops:magicalcrops_DiamondSeeds>]  as IItemStack[];
    val essences = [<magicalcrops:magicalcrops_AirEssence>, <magicalcrops:magicalcrops_CoalEssence>, <magicalcrops:magicalcrops_DyeEssence>, <magicalcrops:magicalcrops_EarthEssence>, <magicalcrops:magicalcrops_FireEssence>, <magicalcrops:magicalcrops_NatureEssence>, <magicalcrops:magicalcrops_WaterEssence>, <magicalcrops:magicalcrops_RedstoneEssence>, <magicalcrops:magicalcrops_GlowstoneEssence>, <magicalcrops:magicalcrops_ObsidianEssence>, <magicalcrops:magicalcrops_NetherEssence>, <magicalcrops:magicalcrops_IronEssence>, <magicalcrops:magicalcrops_GoldEssence>, <magicalcrops:magicalcrops_LapisEssence>, <magicalcrops:magicalcrops_ExperienceEssence>, <magicalcrops:magicalcrops_QuartzEssence>,<magicalcrops:magicalcrops_DiamondEssence>]  as IItemStack[];

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
        recipes.addShaped(<magicalcrops:magicalcrops_InfusionStoneRegular>,[
        [accio_block, imbued_slate, accio_block],
        [imbued_slate, weak_infusion_stone, imbued_slate],
        [accio_block, imbued_slate, accio_block]]);

    #strong infusion stone
        recipes.addShaped(<magicalcrops:magicalcrops_InfusionStoneStrong>,[
        [crucio_block, elementum_ingot, crucio_block],
        [elementum_ingot, regular_infusion_stone, elementum_ingot],
        [crucio_block, elementum_ingot, crucio_block]]);

    #extreme infusion stone
        recipes.addShaped(<magicalcrops:magicalcrops_InfusionStoneExtreme>,[
        [imperio_block, void_metal_ingot, imperio_block],
        [void_metal_ingot, strong_infusion_stone, void_metal_ingot],
        [imperio_block, void_metal_ingot, imperio_block]]);

    #master infusion stone
        mods.avaritia.ExtremeCrafting.addShaped(<magicalcrops:magicalcrops_InfusionStoneMaster>, [
        [terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot],
        [terrasteel_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, terrasteel_ingot], 
        [terrasteel_ingot, void_metal_ingot, ethereal_slate, ethereal_slate, ethereal_slate, ethereal_slate, ethereal_slate, void_metal_ingot, terrasteel_ingot], 
        [terrasteel_ingot, void_metal_ingot, ethereal_slate, ichorium, ichorium, ichorium, ethereal_slate, void_metal_ingot, terrasteel_ingot], 
        [terrasteel_ingot, void_metal_ingot, ethereal_slate, ichorium, extreme_infusion_stone, ichorium, ethereal_slate, void_metal_ingot, terrasteel_ingot], 
        [terrasteel_ingot, void_metal_ingot, ethereal_slate, ichorium, ichorium, ichorium, ethereal_slate, void_metal_ingot, terrasteel_ingot], 
        [terrasteel_ingot, void_metal_ingot, ethereal_slate, ethereal_slate, ethereal_slate, ethereal_slate, ethereal_slate, void_metal_ingot, terrasteel_ingot],
        [terrasteel_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, void_metal_ingot, terrasteel_ingot], 
        [terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot, terrasteel_ingot]]);

    #Phytogenic insulator recursion
        for i, seed in seeds {
            val esscence = essences[i];
             mods.thermalexpansion.Insolator.addRecipe(40000, seed, <ThermalExpansion:material:517>, esscence * 3, seed, 150);
             }
