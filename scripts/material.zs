// Some Material
import crafttweaker.oredict.IOreDictEntry;


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
