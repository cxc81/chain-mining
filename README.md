# Chain Mining Data Pack

## Language
* [中文](README_zh.md)

## Introduction
* Features: This data pack allows players to mine surrounding blocks of the same type automatically after breaking one block.
* Applicable versions: Minecraft Java Edition 1.20.5 and above.

## Compatibility
* Namespace 'mine' is used, and all scoreboard objectives start with 'mine'.
* No additional blocks or entities are used to store data, aside from the functionality itself.

## Main Content
* Supports mining these blocks: Ores, Logs/Stems, Stone-like blocks, Glowstone, and Crops.
* Players can trigger a chain mining when mining a block, allowing unlimited mining of adjacent same-type blocks.
* If a tool is used, its durability will be consumed automatically (which may lead to tool breaking), but enchantments will take effect.
* To avoid triggering a chain mining, you can hold sneaking.
* In-game settings are available to control individual switches for chain mining, and each player has independent settings.

### Ores
* Supports the following 12 block types, including the Deepslate variants of the first 8 types.
>* They are: Coal Ore, Copper Ore, Iron Ore, Lapis Lazuli Ore, Redstone Ore, Gold Ore, Diamond Ore, Emerald Ore, Nether Quartz Ore, Nether Gold Ore, Gilded Blackstone, and Ancient Debris.
* A proper Pickaxe is required to trigger the chain mining.

### Logs and Stems
* Supports these 11 block types: Oak Log, Spruce Log, Birch Log, Jungle Log, Acacia Log, Dark Oak Log, Mangrove Log, Mangrove Roots, Cherry Log, Crimson Stem, and Warped Stem.
* An Axe is required to trigger the chain mining.
* For Logs, a 3x3x3 range of Leaves will also be mined, and the drops will be affected by the enchantments on the off-hand tool.
* For Stems, when holding a hoe in the off-hand, the corresponding Wart Blocks and Shroomlights will also be mined without any quantity limit.
* Mangrove Roots can also be chained along with Mangrove Logs.

### Stone-like Blocks
* Supports these 6 block types: Andesite, Diorite, Granite, Tuff, Calcite, and Magma Block.
* A Pickaxe is required to trigger the chain mining.
* The default setting for this category is OFF! Unless specifically needed, DO NOT turn it on in the settings (it may cause Pickaxes to break instantly).

### Glowstone
* Can be mined with any item (including bare hands).
* Using a tool to mine Glowstone will consume its durability, but the enchantments will take effect.

### Crops (Category 1)
* Supports these 6 block types: Wheat, Carrots, Potatoes, Beetroot, Nether Wart, and Sugar Canes.
* Only mature crops can be chained, and they will be automatically replanted after being mined.
* Using a tool does not consume its durability, and the Fortune enchantment will take effect.
* For Sugar Canes, the ones at the very bottom will not be automatically mined.

### Crops (Category 2)
* Supports these 3 block types: Pumpkins, Melons, and Cocoa.
* An Axe is required to trigger the chain mining, and Cocoa will be automatically replanted.
* The Axe will consume durability normally, and the Silk Touch enchantment (applicable to Melons) will take effect.
* Pumpkin and Melon Stems will not be chain-mined.

### Other Features
* Upon entering the world, players will receive a chat prompt that they can be clicked to view Settings, Instructions, or Changelogs.
* Settings include:
>* Independent switches for Ores, Logs/Stems, Stone-like blocks, Glowstone, Crops 1, and Crops 2.
>* A switch for automatically teleporting drops to the player.
>* A function to uninstall this data pack (requires op permissions to execute).
