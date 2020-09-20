// Ore
import mods.jei.JEI as jei;
import crafttweaker.item.IItemStack;

val disableOre = [
  <immersiveengineering:ore:*>,
  <mekanism:oreblock:1>,
  <mekanism:oreblock:2>,
  <libvulpes:ore0:5>,
  <libvulpes:ore0:4>,
  <libvulpes:ore0:8>,
  <libvulpes:ore0:9>,
  <thermalfoundation:ore:7>,
  <thermalfoundation:ore:8>
] as IItemStack[];

for item in disableOre {
  jei.hide(item);
}

mods.botania.Orechid.removeOre("oreUranium");
mods.botania.Orechid.removeOre("oreMithril");
