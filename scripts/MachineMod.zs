import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gtadditions.recipe.Utils;
import mods.gtadditions.recipe.LargeRecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;

val name_removals as string[] = [
	"machinemod:assemblytable",
	"machinemod:aslphaltslab",
	"machinemod:machinecrate",
	"machinemod:machineprimarycrusher",
	"machinemod:machineconveyor",
	"machinemod:machineconveyort2",
	"machinemod:feedtrough",
	"machinemod:bleakportalframe",
	"machinemod:bleakportalframe2",
	"machinemod:machinefractionaldistillation",
	"machinemod:machineliquidpipe",
	"machinemod:machinescreen",
	"machinemod:machinefuelpump",
	"machinemod:machinedistiller",
	"machinemod:machinefermenter",
	"machinemod:machinewellhead",
	"machinemod:bagger",
	"machinemod:bulldozer",
	"machinemod:combine",
	"machinemod:drillingrig",
	"machinemod:dumptruck",
	"machinemod:excavator",
	"machinemod:grader",
	"machinemod:lawnmower",
	"machinemod:loader",
	"machinemod:paver",
	"machinemod:roadroller",
	"machinemod:semitractor",
	"machinemod:sub",
	"machinemod:tractor",
	"machinemod:infusedcrystal",
	"machinemod:paverscreed",
	"machinemod:rollerwheel",
	"machinemod:liquidtanksegment",
	"machinemod:prop",
	"machinemod:propcage",
	"machinemod:turboprop",
	"machinemod:operatorsbubble",
	"machinemod:subbody",
	"machinemod:airtank",
	"machinemod:powercell",
	"machinemod:light",
	"machinemod:lightmodule",
	"machinemod:elytrajetleg",
	"machinemod:crashhelmet",
	"machinemod:steeltoeboots",
	"machinemod:afterburner",
	"machinemod:collapsedstar",
	"machinemod:tracksegment",
	"machinemod:cutterbucket",
	"machinemod:rigging",
	"machinemod:bucketwheel",
	"machinemod:operatorsbooth",
	"machinemod:powerplant",
	"machinemod:processingplant",
	"machinemod:baggerstorage",
	"machinemod:baggerbody",
	"machinemod:conecrusher",
	"machinemod:boomarmsegment",
	"machinemod:hose",
	"machinemod:mowerdeck",
	"machinemod:lidwithspout",
	"machinemod:handdrill",
	"machinemod:hammer",
	"machinemod:anfo",
	"machinemod:trencher",
	"machinemod:drillhead",
	"machinemod:drillpipe",
	"machinemod:plow",
	"machinemod:planter",
	"machinemod:sprayer",
	"machinemod:stonegear",
	"machinemod:irongear",
	"machinemod:transmission",
	"machinemod:turbofan",
	"machinemod:camshaft",
	"machinemod:piston",
	"machinemod:turbo",
	"machinemod:turboengine",
	"machinemod:flatbedtrailer",
	"machinemod:livestocktrailer",
	"machinemod:tankertrailer",
	"machinemod:dozerblade",
	"machinemod:tracks",
	"machinemod:wheel",
	"machinemod:loaderbucket",
	"machinemod:dumperbed",
	"machinemod:engine",
	"machinemod:harvesterhead",
	"machinemod:fuelcan",
	"machinemod:graderblade",
	"machinemod:wrench",
	"machinemod:steeldust",
	"machinemod:asphaltslab",
	"machinemod:bleakcrystalinfusedsand"
];

for item in name_removals {
	recipes.removeByRecipeName(item);
}

for solder in soldering_alloys{
	assembler.recipeBuilder()
		.inputs([
			<ore:plateCurvedAluminium>*2,
			<machinemod:turbofan>
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:turbo>)
		.duration(200)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<ore:turbineBladeAluminium>*4,
			<ore:stickAluminium>
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:turbofan>)
		.duration(200)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<machinemod:engine>,
			<machinemod:operatorsbooth>,
			<machinemod:tracksegment>*2,
			<ore:plateAluminium>*16,
			<ore:frameGtAluminium>*4,
			<machinemod:drillpipe>*2,
			<machinemod:drillhead>,
		robotArms[2]*4
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:drillingrig>)
		.duration(40)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<ore:plateCurvedSteel>*2,
			<ore:stickLongSteel>,
			<ore:gearSteel>*2
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:transmission>)
		.duration(40)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<machinemod:operatorsbooth>,
			<machinemod:wheel>*6,
			<ore:stickLongSteel>*2,
			<ore:stickSteel>*6,
			<machinemod:transmission>,
			pistons[2]*2,
			<ore:plateSteel>*8,
			<machinemod:engine>
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:dumptruck>)
		.duration(40)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<ore:plateAluminium>,
			<ore:plateCurvedAluminium>,
			<ore:gearSmallSteel>,
			<ore:wireFineSteel>
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:mowerdeck>)
		.duration(20)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<machinemod:mowerdeck>,
			<machinemod:engine>,
			<machinemod:transmission>,
			<machinemod:wheel>*4,
			<ore:gearSteel>
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:lawnmower>)
		.duration(40)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<ore:plateAluminium>*8,
			<ore:stickAluminium>*16,
			<ore:stickLongAluminium>*2,
			<ore:plateAluminium>*12,
			<machinemod:wheel>*4,
			<machinemod:engine>*1,
			<machinemod:transmission>*1,
			<machinemod:operatorsbooth>
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:combine>)
		.duration(40)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<machinemod:tracksegment>*2,
			<machinemod:engine>,
			<ore:gearSteel>*4,
			<ore:plateSteel>*8,
			<machinemod:operatorsbooth>,
			robotArms[2]*2
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:bulldozer>)
		.duration(40)
		.EUt(60)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<ore:plateAluminium>*4,
			<ore:stickAluminium>
		])
		.circuit(30)
		.fluidInputs(solder*72)
		.outputs(<machinemod:fuelcan:1000>)
		.duration(20)
		.EUt(30)
		.buildAndRegister();
	assembler.recipeBuilder()
		.inputs([
			<ore:plateStainlessSteel>,
			<ore:gearSmallStainlessSteel>*8,
			<ore:plateCurvedStainlessSteel>*2,
			pumps[3]
		])
		.fluidInputs(solder*72)
		.outputs(<machinemod:elytrajetleg:15000>)
		.duration(40)
		.EUt(120)
		.buildAndRegister();
}

assembler.recipeBuilder()
	.inputs([
		<contenttweaker:engine_block>,
		<machinemod:piston>*8,
		<machinemod:camshaft>,
		<ore:boltAluminium>*16
	])
	.fluidInputs(<liquid:lubricant>*4)
	.outputs(<machinemod:engine>)
	.duration(400)
	.EUt(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs([
		<ore:stickAluminium>,
		<ore:plateAluminium>,
		<ore:boltAluminium>*2
	])
	.outputs(<machinemod:piston>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs([
		<ore:boltAluminium>*4,
		<machinemod:turbo>*2,
		<machinemod:engine>
	])
	.outputs(<machinemod:turboengine>)
	.duration(40)
	.EUt(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs([
		<ore:pipeLargeSteel>*6,
		<ore:ringSteel>*7
	])
	.outputs(<machinemod:drillpipe>)
	.duration(40)
	.EUt(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs([
		<machinemod:drillpipe>,
		<ore:craftingGrinder>
	])
	.outputs(<machinemod:drillhead>)
	.duration(40)
	.EUt(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs([
		<ore:plateAluminium>*6,
		<ore:paneGlass>*4,
		<ore:stickAluminium>*8,
		<ore:gearSteel>*8
	])
	.outputs(<machinemod:operatorsbooth>)
	.duration(40)
	.EUt(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs([
		<ore:plateSteel>*16,
		<ore:gearSteel>*16,
		<ore:gearSmallSteel>*16
	])
	.outputs(<machinemod:tracksegment>)
	.duration(40)
	.EUt(40)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([
		<ore:plateAluminium>*2,
		<ore:plateCurvedAluminium>*2,
		<ore:plateRubber>*4
	])
	.outputs(<machinemod:wheel>)
	.duration(40)
	.EUt(60)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs([
		<machinemod:engine>,
		robotArms[2],
		<machinemod:wheel>*4,
		<ore:stickLongSteel>*2,
		<ore:plateSteel>*8,
		<ore:plateCurvedSteel>*2,
		<machinemod:operatorsbooth>
	])
	.outputs(<machinemod:loader>)
	.duration(400)
	.EUt(60)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<contenttweaker:full_engine_block_cast>)
	.outputs([
		<contenttweaker:engine_block>,
		<ore:dustZircon>.firstItem*8
	])
	.property("temperature", 800)
	.duration(500)
	.EUt(100)
	.buildAndRegister();

canner.recipeBuilder()
	.inputs(<contenttweaker:engine_block_cast>)
	.fluidInputs(<liquid:aluminium>*576)
	.outputs(<contenttweaker:full_engine_block_cast>)
	.duration(200)
	.EUt(60)
	.buildAndRegister();
	
val fuels as ILiquidStack[] = [
	<liquid:naphtha>*1000,
	<liquid:fuel>*1000
];

for fuel in fuels {
	canner.recipeBuilder()
		.inputs(<machinemod:fuelcan:1000>)
		.fluidInputs(fuel)
		.outputs(<machinemod:fuelcan>)
		.duration(20)
		.EUt(16)
		.buildAndRegister();
		
	canner.recipeBuilder()
		.inputs(<machinemod:elytrajetleg>.anyDamage())
		.fluidInputs(fuel)
		.outputs(<machinemod:elytrajetleg>)
		.duration(20)
		.EUt(24)
		.buildAndRegister();
}
	
forming_press.recipeBuilder()
	.inputs(<ore:dustZircon.mold.base>*8)
	.notConsumable(<ore:plateSteel>)
	.outputs(<contenttweaker:engine_block_cast>)
	.duration(200)
	.EUt(60)
	.buildAndRegister();
	
lathe.recipeBuilder()
	.inputs(<ore:stickAluminium>)
	.outputs(<machinemod:camshaft>)
	.duration(300)
	.EUt(40)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<ore:dustZircon>*8)
	.fluidInputs(<liquid:glue>*1)
	.outputs(<ore:dustZircon.mold.base>.firstItem*8)
	.duration(200)
	.EUt(30)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs([<ore:dustSand>*16])
	.fluidInputs([
		<liquid:ammonium_nitrate>*950,
		<liquid:fuel>*50
	])
	.outputs(<machinemod:anfo>*16)
	.duration(60)
	.EUt(60)
	.buildAndRegister();
	
//Blasted Stone Ore Sorting

<multiblock:multiblocktweaker:ore_sorter>.recipeMap.recipeBuilder()
	.inputs([
		<ore:anyBlastedStone>*16
	])
	.outputs([
		<contenttweaker:rock_carbon>,
		<contenttweaker:rock_carbonate>,
		<contenttweaker:rock_clay>,
		<contenttweaker:rock_oxide>,
		<contenttweaker:rock_phosphate>,
		<contenttweaker:rock_precious>,
		<contenttweaker:rock_radioactive>,
		<contenttweaker:rock_sedimentary>,
		<contenttweaker:rock_silicate>,
		<contenttweaker:rock_sulfur>
	])
	.duration(20)
	.EUt(60)
	.buildAndRegister();