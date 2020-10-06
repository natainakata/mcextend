#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;

var blockLlAlloy = VanillaFactory.createBlock("lowlevel_alloy_block", <blockmaterial:iron>);
blockLlAlloy.setBlockHardness(3.0);
blockLlAlloy.setBlockResistance(15.0);
blockLlAlloy.setToolLevel(2);
blockLlAlloy.setToolClass("pickaxe");
blockLlAlloy.setBlockSoundType(<soundtype:metal>);
blockLlAlloy.register();

var blockLlAlloyDust = VanillaFactory.createBlock("lowlevel_alloy_dust_block", <blockmaterial:ground>);
blockLlAlloyDust.setBlockHardness(1.0);
blockLlAlloyDust.setBlockResistance(15.0);
blockLlAlloyDust.setToolLevel(1);
blockLlAlloyDust.setToolClass("pickaxe");
blockLlAlloyDust.setBlockSoundType(<soundtype:ground>);
blockLlAlloyDust.register();

var itemLlAlloyDust = VanillaFactory.createItem("lowlevel_alloy_dust");
itemLlAlloyDust.register();
