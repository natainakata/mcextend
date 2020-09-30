// Some Material
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;


// Remove Hammer Plate Recipes
val immMetal = <immersiveengineering:metal>.definition;
val immImgot = [
  <ore:ingotCopper>,
  <ore:ingotAluminum>,
  <ore:ingotLead>,
  <ore:ingotSilver>,
  <ore:ingotNickel>,
  <ore:ingotUranium>,
  <ore:ingotConstantan>,
  <ore:ingotElectrum>,
  <ore:ingotSteel>,
  <ore:ingotIron>,
  <ore:ingotGold>
] as IOreDictEntry[];


for i in 30 .. 41 {
  recipes.removeShapeless(immMetal.makeStack(i), [<immersiveengineering:tool>, immImgot[i - 30]]);
}

val gears = {
  <ore:ingotIron> : <thermalfoundation:material:24>,
  <ore:ingotGold> : <thermalfoundation:material:25>,
  <ore:ingotCopper> : <thermalfoundation:material:256>,
  <ore:ingotTin> : <thermalfoundation:material:257>,
  <ore:ingotSilver> : <thermalfoundation:material:258>,
  <ore:ingotLead> : <thermalfoundation:material:259>,
  <ore:ingotAluminium> : <thermalfoundation:material:260>,
  <ore:ingotNickel> : <thermalfoundation:material:261>,
  <ore:ingotPlatinum> : <thermalfoundation:material:262>,
  <ore:ingotIridium> : <thermalfoundation:material:263>,
  <ore:ingotSteel> : <thermalfoundation:material:288>,
  <ore:ingotElectrum> : <thermalfoundation:material:289>,
  <ore:ingotInvert> : <thermalfoundation:material:290>,
  <ore:ingotBronze> : <thermalfoundation:material:291>,
  <ore:ingotConstantan> : <thermalfoundation:material:292>,
  <ore:ingotSignalum> : <thermalfoundation:material:293>,
  <ore:ingotLumium> : <thermalfoundation:material:294>,
  <ore:ingotEnderium> : <thermalfoundation:material:295>,
  <ore:ingotBrass> : <dcs_climate:dcs_spindle:1>,
  <ore:ingotNickelsilver> : <dcs_climate:dcs_spindle:2>,
  <ore:ingotToolSteel> : <dcs_climate:dcs_spindle:4>
} as IItemStack[IOreDictEntry];

// gear recipes
for ingot, gear in gears {
  recipes.remove(gear);
  RecipeBuilder.get("blacksmith")
    .setShaped([
      [null, ingot, null],
      [ingot, null, ingot],
      [null, ingot, null]])
    .setFluid(<liquid:lava> * 100)
    .addTool(<ore:artisansHammer>, 1)
    .addOutput(gear)
    .create();
}

recipes.remove(<dcs_climate:dcs_spindle:3>);
