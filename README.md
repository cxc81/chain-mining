# Chain Mining Data Pack

## Language
* [中文](README_zh.md)

## Introduction
* Features: This data pack allows players to mine adjacent blocks of the same type automatically after breaking one block.
* Supported versions: Minecraft Java Edition 1.20.5 and above.
* **Warning: 1.20.5 - 1.20.6 will be no longer supported in a future update!** All blocks are planned to be chain-mined; please see [here](#future_plans).

## Downloads
* Go to [the latest release](https://github.com/cxc81/chain-mining/releases/latest)。
* Choose a corresponding data pack based on your Minecraft version, and download it。
* Install this pack to your desired world, and run ```/reload``` if the world is already open. ([How to install](https://minecraft.wiki/w/Tutorial:Installing_a_data_pack))

## Compatibility
* Namespace ```chain_mining``` is used, and all scoreboard objectives start with ```chain_mining```.
* No temporary blocks or entities are created to store data.

## Main Content
* Supports mining these block types: Ores, Logs, Stems, Rocks, and Crops.
* Players can trigger a "chain mining" when mining a block, allowing unlimited mining of adjacent same-type blocks.
* If the block has hardness and a tool is used, its durability will be consumed automatically (until tool breaking), but enchantments will take effect.
* To avoid triggering a chain mining, you can hold sneaking.
* In-game settings are available to control individual switches, and each player has independent settings.

### Overworld ores
* Supports the following 9 block types: Coal Ore, Copper Ore, Iron Ore, Lapis Lazuli Ore, Redstone Ore, Gold Ore, Diamond Ore, Emerald Ore, and Amethyst Cluster.
    - This also includes the deepslate variants of the first 8 types.
* A proper pickaxe is required to trigger the chain mining.

### Nether ores
* Supports these 5 block types: Nether Quartz Ore, Nether Gold Ore, Gilded Blackstone, Ancient Debris, and Glowstone.
* A proper pickaxe is required to trigger the chain mining, except for Glowstone.
* Using a tool to mine Glowstone will consume its durability, but the enchantments will take effect.

### Logs and Stems
* Supports these 12 block types: Oak Log, Spruce Log, Birch Log, Jungle Log, Acacia Log, Dark Oak Log, Mangrove Log, Mangrove Roots, Pale Oak Log, Cherry Log, Crimson Stem, and Warped Stem.
* An axe is required to trigger the chain mining.
* If the off-hand holds a hoe, a 5×2×5 range of corresponding Leaves, Wart Blocks and Shroomlights will also be mined.
* Mangrove Roots can be chained together with Mangrove Logs.

### Rocks
* Supports these 7 block types: Andesite, Diorite, Granite, Tuff, Calcite, Amethyst Block, and Magma Block.
* A pickaxe is required to trigger the chain mining.
* The default setting for this category is OFF! Unless specifically needed, DO NOT turn it on in the settings (it may cause pickaxes to break instantly).

### Soft crops
* Supports these 11 block types: Wheat, Carrots, Potatoes, Beetroot, Nether Wart, Sweet Berry Bushes, Torchflower, Pitcher Crop, Sugar Canes, Cave Vines and Resin Clump.
* Only fully-grown crops can be chained, the first 6 of which will be automatically replanted after being mined.
* Fully-grown Sweet Berry Bushes and Cave Vines can also be harvested by right-clicking.
* Using a tool does NOT consume its durability due to these blocks having no hardness.
* The Sugar Cane at the very bottom will not be chain-mined.

### Hard crops
* Supports these 6 block types: Pumpkin, Carved Pumpkin, Melon, Cocoa, Cactus, and Bamboo, as well as carving Pumpkins with shears.
* An axe is required to trigger the chain mining, except for Cactus.
* Pumpkin Stems, Melon Stems, and Cactus at the very bottom will not be chain-mined.
* Cocoa will be automatically replanted after being chain-mined.

### Other Features
* Upon entering the world, players will receive a chat prompt that can be clicked to view settings, instructions, or changelogs.
* You can download the resource pack in [the latest release](https://github.com/cxc81/chain-mining/releases/latest) and install it, to support multi-language. ([How to install](https://minecraft.wiki/w/Tutorial:Loading_a_resource_pack))
* Settings include:
    - Independent switches for Overworld ores, Nether ores, Logs/Stems, Rocks, Soft crops, and Hard crops.
    - A switch for automatically teleporting drops to the player.
    - A function to uninstall this data pack (requiring op permissions to execute).

## Future Plans <a id="future_plans"></a>
**The following features will be implemented in v6.0.0.**
* Support for chain-mining all types of blocks.
* Utilize the custom enchantment feature introduced in 1.21, and use the enchantment effect components to track the block being chain-mined.
  - Administrators can choose from the following three modes:
    - Fully Available - The Chain Mining enchantment is automatically added to every tool when it is held;
    - Restricted - The Chain Mining enchantment can only be added individually through commands;
    - Fully Disabled - If a player is holding an item with the Chain Mining enchantment, the enchantment will be immediately removed.
* Add custom chain-mining rules for each type of block.
  - Existing rules will be largely preserved.
  - Support for custom configuration of chain-mining rules.
* Support for more settings.
  - Design new dialog interfaces for versions 1.21.6 and above, replacing the chat screen interfaces.
