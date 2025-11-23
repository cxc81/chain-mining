# 重置一些重要的记分项，以防变量出错，不能正常运行
scoreboard players reset * chain_mining_variables
scoreboard players reset * chain_mining_enter_detect

# 创建主记分项
scoreboard objectives add chain_mining_variables dummy

# 1. 主世界矿石
scoreboard objectives add chain_mining_coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add chain_mining_deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add chain_mining_iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add chain_mining_deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add chain_mining_copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add chain_mining_deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add chain_mining_lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add chain_mining_deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add chain_mining_gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add chain_mining_deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add chain_mining_redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add chain_mining_deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add chain_mining_diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add chain_mining_deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add chain_mining_emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add chain_mining_deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add chain_mining_amethyst_cluster minecraft.mined:minecraft.amethyst_cluster

# 2. 下界矿石
scoreboard objectives add chain_mining_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add chain_mining_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add chain_mining_gilded_blackstone minecraft.mined:minecraft.gilded_blackstone
scoreboard objectives add chain_mining_ancient_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add chain_mining_glowstone minecraft.mined:minecraft.glowstone

# 3. 原木/菌柄/红树根
scoreboard objectives add chain_mining_oak_log minecraft.mined:minecraft.oak_log
scoreboard objectives add chain_mining_spruce_log minecraft.mined:minecraft.spruce_log
scoreboard objectives add chain_mining_birch_log minecraft.mined:minecraft.birch_log
scoreboard objectives add chain_mining_jungle_log minecraft.mined:minecraft.jungle_log
scoreboard objectives add chain_mining_acacia_log minecraft.mined:minecraft.acacia_log
scoreboard objectives add chain_mining_dark_oak_log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add chain_mining_mangrove_log minecraft.mined:minecraft.mangrove_log
scoreboard objectives add chain_mining_mangrove_roots minecraft.mined:minecraft.mangrove_roots
scoreboard objectives add chain_mining_cherry_log minecraft.mined:minecraft.cherry_log
scoreboard objectives add chain_mining_crimson_stem minecraft.mined:minecraft.crimson_stem
scoreboard objectives add chain_mining_warped_stem minecraft.mined:minecraft.warped_stem
# 苍白橡木原木的初始化在末尾定义

# 4. 岩石(安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块)
scoreboard objectives add chain_mining_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add chain_mining_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add chain_mining_granite minecraft.mined:minecraft.granite
scoreboard objectives add chain_mining_tuff minecraft.mined:minecraft.tuff
scoreboard objectives add chain_mining_calcite minecraft.mined:minecraft.calcite
scoreboard objectives add chain_mining_amethyst_block minecraft.mined:minecraft.amethyst_block
scoreboard objectives add chain_mining_magma_block minecraft.mined:minecraft.magma_block

# 5. 软作物(小麦、胡萝卜、马铃薯、甜菜根、火把花、瓶子草植株、下界疣、甘蔗、甜浆果丛、洞穴藤蔓和树脂团)
scoreboard objectives add chain_mining_wheat minecraft.mined:minecraft.wheat
scoreboard objectives add chain_mining_carrots minecraft.mined:minecraft.carrots
scoreboard objectives add chain_mining_potatoes minecraft.mined:minecraft.potatoes
scoreboard objectives add chain_mining_beetroots minecraft.mined:minecraft.beetroots
scoreboard objectives add chain_mining_torchflower minecraft.mined:minecraft.torchflower
scoreboard objectives add chain_mining_pitcher_crop minecraft.mined:minecraft.pitcher_crop
scoreboard objectives add chain_mining_nether_wart minecraft.mined:minecraft.nether_wart
scoreboard objectives add chain_mining_sugar_cane minecraft.mined:minecraft.sugar_cane
scoreboard objectives add chain_mining_sweet_berry_bush minecraft.mined:minecraft.sweet_berry_bush
scoreboard objectives add chain_mining_cave_vines minecraft.mined:minecraft.cave_vines
scoreboard objectives add chain_mining_cave_vines_plant minecraft.mined:minecraft.cave_vines_plant
# 树脂团的初始化在末尾定义

# 6. 硬作物(南瓜、雕刻南瓜、西瓜、可可果、仙人掌和竹子)
scoreboard objectives add chain_mining_pumpkin minecraft.mined:minecraft.pumpkin
scoreboard objectives add chain_mining_carved_pumpkin minecraft.mined:minecraft.carved_pumpkin
scoreboard objectives add chain_mining_melon minecraft.mined:minecraft.melon
scoreboard objectives add chain_mining_cocoa minecraft.mined:minecraft.cocoa
scoreboard objectives add chain_mining_cactus minecraft.mined:minecraft.cactus
scoreboard objectives add chain_mining_bamboo minecraft.mined:minecraft.bamboo

# 7. 设置与触发器
scoreboard objectives add chain_mining_global_settings dummy
scoreboard objectives add chain_mining_setting_overworld_ores dummy
scoreboard objectives add chain_mining_setting_nether_ores dummy
scoreboard objectives add chain_mining_setting_logs dummy
scoreboard objectives add chain_mining_setting_rocks dummy
scoreboard objectives add chain_mining_setting_soft_crops dummy
scoreboard objectives add chain_mining_setting_hard_crops dummy
scoreboard objectives add chain_mining_setting_loot dummy
scoreboard objectives add chain_mining_enter_detect dummy
scoreboard objectives add chain_mining_trigger trigger {"translate": "chain_mining.scoreboard.trigger", "color": "gold", "fallback": "连锁采集：触发器"}

# 8. 其他设置
function chain_mining:util/initialize_scoreboards/since_1_21_4
scoreboard objectives add chain_mining_constants dummy
scoreboard players set 16 chain_mining_constants 16
scoreboard players set 256 chain_mining_constants 256
scoreboard players set 65536 chain_mining_constants 65536
