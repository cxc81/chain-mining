# Chain Mining Data Pack

## Language
* [中文](README_zh.md)

## Introduction
* Features: This data pack allows players to mine adjacent blocks of the same type automatically after breaking one block.
* Supported versions: Minecraft Java Edition 1.20.5 and above.

## Downloads
* Go to [the latest release](https://github.com/cxc81/chain-mining/releases/latest)。
* Choose a corresponding data pack based on your Minecraft version, and download it。
* For instructions on installing a data pack, see [here](https://minecraft.wiki/w/Tutorials/Installing_a_data_pack)。

## Compatibility
* Namespace ```chain_mining``` is used, and all scoreboard objectives start with ```chain_mining```.
* No additional blocks or entities are used to store data, aside from the functionality itself.

## Main Content
* Supports mining these block types: Ores, Logs, Stems, Rocks, and Crops.
* Players can trigger a chain mining when mining a block, allowing unlimited mining of adjacent same-type blocks.
* If the block has hardness and a tool is used, its durability will be consumed automatically (until tool breaking), but enchantments will take effect.
* To avoid triggering a chain mining, you can hold sneaking.
* In-game settings are available to control individual switches for chain mining, and each player has independent settings.

### Overworld ores
* Supports the following 9 block types, including the deepslate variants of the first 8 types.
    - They are: Coal Ore, Copper Ore, Iron Ore, Lapis Lazuli Ore, Redstone Ore, Gold Ore, Diamond Ore, Emerald Ore, and Amethyst Cluster.
* A proper pickaxe is required to trigger the chain mining.

### Nether ores
* Supports these 5 block types: Nether Quartz Ore, Nether Gold Ore, Gilded Blackstone, Ancient Debris, and Glowstone.
* A proper pickaxe is required to trigger the chain mining, except for Glowstone.
* Using a tool to mine Glowstone will consume its durability, but the enchantments will take effect.

### Logs and Stems
* Supports these 12 block types: Oak Log, Spruce Log, Birch Log, Jungle Log, Acacia Log, Dark Oak Log, Mangrove Log, Mangrove Roots, Pale Oak Log, Cherry Log, Crimson Stem, and Warped Stem.
* An axe is required to trigger the chain mining.
* If the off-hand holds a hoe, a 5×4×5 range of corresponding Leaves, Wart Blocks and Shroomlights will also be mined.
* Mangrove Roots can be chained together with Mangrove Logs.

### Rocks
* Supports these 7 block types: Andesite, Diorite, Granite, Tuff, Calcite, Amethyst Block, and Magma Block.
* A pickaxe is required to trigger the chain mining.
* The default setting for this category is OFF! Unless specifically needed, DO NOT turn it on in the settings (it may cause pickaxes to break instantly).

### Crops without hardness
* Supports these 7 block types: Wheat, Carrots, Potatoes, Beetroot, Nether Wart, Sugar Canes, and Sweet Berry Bushes.
* Only fully-grown crops can be chained, most of which will be automatically replanted after being mined.
* Using a tool does not consume its durability, and the Fortune enchantment will take effect.
* For Sugar Canes, the ones at the very bottom will not be automatically mined.

### Crops with hardness
* Supports these 4 block types: Pumpkins, Melons, Cocoa, and Cactus.
* An axe is required to trigger the chain mining, except for Cactus.
* Pumpkin Stems, Melon Stems, and Cactus at the very bottom will not be chain-mined.
* Cocoa will be automatically replanted after being chain-mined.

### Other Features
* Upon entering the world, players will receive a chat prompt that can be clicked to view settings, instructions, or changelogs.
* Settings include:
    - Independent switches for Overworld ores, Nether ores, Logs/Stems, Rocks, Crops without hardness, and Crops with hardness.
    - A switch for automatically teleporting drops to the player.
    - A function to uninstall this data pack (requiring op permissions to execute).
