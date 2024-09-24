scoreboard objectives remove mine
scoreboard objectives remove mine_enter

scoreboard objectives remove mine_coal_ore
scoreboard objectives remove mine_deepslate_coal_ore
scoreboard objectives remove mine_iron_ore
scoreboard objectives remove mine_deepslate_iron_ore
scoreboard objectives remove mine_copper_ore
scoreboard objectives remove mine_deepslate_copper_ore
scoreboard objectives remove mine_lapis_ore
scoreboard objectives remove mine_deepslate_lapis_ore
scoreboard objectives remove mine_gold_ore
scoreboard objectives remove mine_deepslate_gold_ore
scoreboard objectives remove mine_redstone_ore
scoreboard objectives remove mine_deepslate_redstone_ore
scoreboard objectives remove mine_diamond_ore
scoreboard objectives remove mine_deepslate_diamond_ore
scoreboard objectives remove mine_emerald_ore
scoreboard objectives remove mine_deepslate_emerald_ore
scoreboard objectives remove mine_nether_quartz_ore
scoreboard objectives remove mine_nether_gold_ore
scoreboard objectives remove mine_gilded_blackstone
scoreboard objectives remove mine_ancient_debris

scoreboard objectives remove mine_oak_log
scoreboard objectives remove mine_spruce_log
scoreboard objectives remove mine_birch_log
scoreboard objectives remove mine_jungle_log
scoreboard objectives remove mine_acacia_log
scoreboard objectives remove mine_dark_oak_log
scoreboard objectives remove mine_mangrove_log
scoreboard objectives remove mine_mangrove_roots
scoreboard objectives remove mine_cherry_log
scoreboard objectives remove mine_crimson_stem
scoreboard objectives remove mine_warped_stem

scoreboard objectives remove mine_andesite
scoreboard objectives remove mine_diorite
scoreboard objectives remove mine_granite
scoreboard objectives remove mine_tuff
scoreboard objectives remove mine_calcite
scoreboard objectives remove mine_magma_block

scoreboard objectives remove mine_glowstone

scoreboard objectives remove mine_wheat
scoreboard objectives remove mine_carrot
scoreboard objectives remove mine_potato
scoreboard objectives remove mine_beetroot
scoreboard objectives remove mine_nether_wart
scoreboard objectives remove mine_sugar_cane

scoreboard objectives remove mine_pumpkin
scoreboard objectives remove mine_melon
scoreboard objectives remove mine_cocoa

scoreboard objectives remove mine_setting_ores
scoreboard objectives remove mine_setting_logs
scoreboard objectives remove mine_setting_stones
scoreboard objectives remove mine_setting_glowstone
scoreboard objectives remove mine_setting_crops_1
scoreboard objectives remove mine_setting_crops_2
scoreboard objectives remove mine_setting_loot
scoreboard objectives remove mine_enter
scoreboard objectives remove mine_trigger

scoreboard objectives remove mine_confirm_unload

data remove storage mine:data dataVersion
data remove storage mine:data functionCall
data remove storage mine:data items

tellraw @s ["",{"text":"卸载完成！已成功删除相关的记分板和命令存储！","color":"yellow"}]
tellraw @s ["",{"text":"在重新加载世界前，请将此数据包从世界文件夹中移除！","color":"green"}]
