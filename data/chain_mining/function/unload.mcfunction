scoreboard objectives remove chain_mining_variables
scoreboard objectives remove chain_mining_enter_detect

scoreboard objectives remove chain_mining_coal_ore
scoreboard objectives remove chain_mining_deepslate_coal_ore
scoreboard objectives remove chain_mining_iron_ore
scoreboard objectives remove chain_mining_deepslate_iron_ore
scoreboard objectives remove chain_mining_copper_ore
scoreboard objectives remove chain_mining_deepslate_copper_ore
scoreboard objectives remove chain_mining_lapis_ore
scoreboard objectives remove chain_mining_deepslate_lapis_ore
scoreboard objectives remove chain_mining_gold_ore
scoreboard objectives remove chain_mining_deepslate_gold_ore
scoreboard objectives remove chain_mining_redstone_ore
scoreboard objectives remove chain_mining_deepslate_redstone_ore
scoreboard objectives remove chain_mining_diamond_ore
scoreboard objectives remove chain_mining_deepslate_diamond_ore
scoreboard objectives remove chain_mining_emerald_ore
scoreboard objectives remove chain_mining_deepslate_emerald_ore
scoreboard objectives remove chain_mining_amethyst_cluster
scoreboard objectives remove chain_mining_nether_quartz_ore
scoreboard objectives remove chain_mining_nether_gold_ore
scoreboard objectives remove chain_mining_gilded_blackstone
scoreboard objectives remove chain_mining_ancient_debris

scoreboard objectives remove chain_mining_oak_log
scoreboard objectives remove chain_mining_spruce_log
scoreboard objectives remove chain_mining_birch_log
scoreboard objectives remove chain_mining_jungle_log
scoreboard objectives remove chain_mining_acacia_log
scoreboard objectives remove chain_mining_dark_oak_log
scoreboard objectives remove chain_mining_mangrove_log
scoreboard objectives remove chain_mining_mangrove_roots
scoreboard objectives remove chain_mining_cherry_log
scoreboard objectives remove chain_mining_crimson_stem
scoreboard objectives remove chain_mining_warped_stem

scoreboard objectives remove chain_mining_andesite
scoreboard objectives remove chain_mining_diorite
scoreboard objectives remove chain_mining_granite
scoreboard objectives remove chain_mining_tuff
scoreboard objectives remove chain_mining_calcite
scoreboard objectives remove chain_mining_amethyst_block
scoreboard objectives remove chain_mining_magma_block

scoreboard objectives remove chain_mining_glowstone

scoreboard objectives remove chain_mining_wheat
scoreboard objectives remove chain_mining_carrot
scoreboard objectives remove chain_mining_potato
scoreboard objectives remove chain_mining_beetroot
scoreboard objectives remove chain_mining_nether_wart
scoreboard objectives remove chain_mining_sugar_cane
scoreboard objectives remove chain_mining_sweet_berry_bush

scoreboard objectives remove chain_mining_pumpkin
scoreboard objectives remove chain_mining_melon
scoreboard objectives remove chain_mining_cocoa
scoreboard objectives remove chain_mining_cactus

scoreboard objectives remove chain_mining_setting_ores
scoreboard objectives remove chain_mining_setting_logs
scoreboard objectives remove chain_mining_setting_stones
scoreboard objectives remove chain_mining_setting_glowstone
scoreboard objectives remove chain_mining_setting_crops_1
scoreboard objectives remove chain_mining_setting_crops_2
scoreboard objectives remove chain_mining_setting_loot
scoreboard objectives remove chain_mining_trigger

scoreboard objectives remove chain_mining_confirm_unload

# Remove all stored data except last_data_version
data remove storage chain_mining:data data_version
data remove storage chain_mining:data data
data remove storage chain_mining:data function_call
data remove storage chain_mining:data items

tellraw @s ["",{"text":"---------------------------------------------\n","color":"gray"},{"text":"连锁采集数据包","color":"gold","bold":true},{"text":" - 卸载","color":"red"}]
tellraw @s ["",{"text":"卸载完成！已成功删除相关的记分板和命令存储！","color":"yellow"}]
tellraw @s ["",{"text":"在重新加载世界前，请将此数据包从世界文件夹中移除！","color":"green"}]
tellraw @s {"text":"---------------------------------------------","color":"gray"}
