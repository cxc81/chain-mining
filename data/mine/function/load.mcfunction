# 重置一些重要的记分板，以防变量出错，不能正常运行
scoreboard players reset * mine_variables
scoreboard players reset * mine_enter_detect

# 创建记分板
scoreboard objectives add mine_variables dummy {"text":"连锁采集：核心","color":"gold"}
# 1 - 矿石
scoreboard objectives add mine_coal_ore minecraft.mined:minecraft.coal_ore {"text":"连锁采集：挖煤矿石","color":"gold"}
scoreboard objectives add mine_deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore {"text":"连锁采集：挖深层煤矿石","color":"gold"}
scoreboard objectives add mine_iron_ore minecraft.mined:minecraft.iron_ore {"text":"连锁采集：挖铁矿石","color":"gold"}
scoreboard objectives add mine_deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore {"text":"连锁采集：挖深层铁矿石","color":"gold"}
scoreboard objectives add mine_copper_ore minecraft.mined:minecraft.copper_ore {"text":"连锁采集：挖铜矿石","color":"gold"}
scoreboard objectives add mine_deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore {"text":"连锁采集：挖深层铜矿石","color":"gold"}
scoreboard objectives add mine_lapis_ore minecraft.mined:minecraft.lapis_ore {"text":"连锁采集：挖青金石矿石","color":"gold"}
scoreboard objectives add mine_deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore {"text":"连锁采集：挖深层青金石矿石","color":"gold"}
scoreboard objectives add mine_gold_ore minecraft.mined:minecraft.gold_ore {"text":"连锁采集：挖金矿石","color":"gold"}
scoreboard objectives add mine_deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore {"text":"连锁采集：挖深层金矿石","color":"gold"}
scoreboard objectives add mine_redstone_ore minecraft.mined:minecraft.redstone_ore {"text":"连锁采集：挖红石矿石","color":"gold"}
scoreboard objectives add mine_deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore {"text":"连锁采集：挖深层红石矿石","color":"gold"}
scoreboard objectives add mine_diamond_ore minecraft.mined:minecraft.diamond_ore {"text":"连锁采集：挖钻石矿石","color":"gold"}
scoreboard objectives add mine_deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore {"text":"连锁采集：挖深层钻石矿石","color":"gold"}
scoreboard objectives add mine_emerald_ore minecraft.mined:minecraft.emerald_ore {"text":"连锁采集：挖绿宝石矿石","color":"gold"}
scoreboard objectives add mine_deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore {"text":"连锁采集：挖深层绿宝石矿石","color":"gold"}
scoreboard objectives add mine_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore {"text":"连锁采集：挖下界石英矿石","color":"gold"}
scoreboard objectives add mine_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore {"text":"连锁采集：挖下界金矿石","color":"gold"}
scoreboard objectives add mine_gilded_blackstone minecraft.mined:minecraft.gilded_blackstone {"text":"连锁采集：挖镶金黑石","color":"gold"}
scoreboard objectives add mine_ancient_debris minecraft.mined:minecraft.ancient_debris {"text":"连锁采集：挖远古残骸","color":"gold"}
# 2 - 原木/菌柄(还包含红树根)
scoreboard objectives add mine_oak_log minecraft.mined:minecraft.oak_log {"text":"连锁采集：砍橡木原木","color":"gold"}
scoreboard objectives add mine_spruce_log minecraft.mined:minecraft.spruce_log {"text":"连锁采集：砍云杉原木","color":"gold"}
scoreboard objectives add mine_birch_log minecraft.mined:minecraft.birch_log {"text":"连锁采集：砍白桦原木","color":"gold"}
scoreboard objectives add mine_jungle_log minecraft.mined:minecraft.jungle_log {"text":"连锁采集：砍丛林原木","color":"gold"}
scoreboard objectives add mine_acacia_log minecraft.mined:minecraft.acacia_log {"text":"连锁采集：砍金合欢原木","color":"gold"}
scoreboard objectives add mine_dark_oak_log minecraft.mined:minecraft.dark_oak_log {"text":"连锁采集：砍深色橡木原木","color":"gold"}
scoreboard objectives add mine_mangrove_log minecraft.mined:minecraft.mangrove_log {"text":"连锁采集：砍红树原木","color":"gold"}
scoreboard objectives add mine_mangrove_roots minecraft.mined:minecraft.mangrove_roots {"text":"连锁采集：挖红树根","color":"gold"}
scoreboard objectives add mine_cherry_log minecraft.mined:minecraft.cherry_log {"text":"连锁采集：挖红树根","color":"gold"}
scoreboard objectives add mine_crimson_stem minecraft.mined:minecraft.crimson_stem {"text":"连锁采集：砍绯红菌柄","color":"gold"}
scoreboard objectives add mine_warped_stem minecraft.mined:minecraft.warped_stem {"text":"连锁采集：砍诡异菌柄","color":"gold"}
# 3 - 类石头(安山岩、闪长岩、花岗岩、凝灰岩、方解石和岩浆块)
scoreboard objectives add mine_andesite minecraft.mined:minecraft.andesite {"text":"连锁采集：挖安山岩","color":"gold"}
scoreboard objectives add mine_diorite minecraft.mined:minecraft.diorite {"text":"连锁采集：挖闪长岩","color":"gold"}
scoreboard objectives add mine_granite minecraft.mined:minecraft.granite {"text":"连锁采集：挖花岗岩","color":"gold"}
scoreboard objectives add mine_tuff minecraft.mined:minecraft.tuff {"text":"连锁采集：挖凝灰岩","color":"gold"}
scoreboard objectives add mine_calcite minecraft.mined:minecraft.calcite {"text":"连锁采集：挖方解石","color":"gold"}
scoreboard objectives add mine_magma_block minecraft.mined:minecraft.magma_block {"text":"连锁采集：挖岩浆块","color":"gold"}
# 4 - 荧石
scoreboard objectives add mine_glowstone minecraft.mined:minecraft.glowstone {"text":"连锁采集：挖荧石","color":"gold"}
# 5 - 农作物1(小麦、胡萝卜、马铃薯、甜菜根、下界疣和甘蔗)
scoreboard objectives add mine_wheat minecraft.mined:minecraft.wheat {"text":"连锁采集：挖小麦","color":"gold"}
scoreboard objectives add mine_carrot minecraft.mined:minecraft.carrots {"text":"连锁采集：挖胡萝卜","color":"gold"}
scoreboard objectives add mine_potato minecraft.mined:minecraft.potatoes {"text":"连锁采集：挖马铃薯","color":"gold"}
scoreboard objectives add mine_beetroot minecraft.mined:minecraft.beetroots {"text":"连锁采集：挖甜菜根","color":"gold"}
scoreboard objectives add mine_nether_wart minecraft.mined:minecraft.nether_wart {"text":"连锁采集：挖下界疣","color":"gold"}
scoreboard objectives add mine_sugar_cane minecraft.mined:minecraft.sugar_cane {"text":"连锁采集：挖甘蔗","color":"gold"}
# 6 - 农作物2(南瓜、西瓜和可可果)
scoreboard objectives add mine_pumpkin minecraft.mined:minecraft.pumpkin {"text":"连锁采集：挖南瓜","color":"gold"}
scoreboard objectives add mine_melon minecraft.mined:minecraft.melon {"text":"连锁采集：挖西瓜","color":"gold"}
scoreboard objectives add mine_cocoa minecraft.mined:minecraft.cocoa {"text":"连锁采集：挖可可果","color":"gold"}
# 7 - 其他
scoreboard objectives add mine_setting_ores dummy {"text":"连锁采集：农作物设置","color":"gold"}
scoreboard objectives add mine_setting_logs dummy {"text":"连锁采集：原木/菌柄设置","color":"gold"}
scoreboard objectives add mine_setting_stones dummy {"text":"连锁采集：类石头设置","color":"gold"}
scoreboard objectives add mine_setting_glowstone dummy {"text":"连锁采集：荧石设置","color":"gold"}
scoreboard objectives add mine_setting_crops_1 dummy {"text":"连锁采集：农作物1设置","color":"gold"}
scoreboard objectives add mine_setting_crops_2 dummy {"text":"连锁采集：农作物2设置","color":"gold"}
scoreboard objectives add mine_setting_loot dummy {"text":"连锁采集：物品生成点设置","color":"gold"}
scoreboard objectives add mine_enter_detect dummy {"text":"连锁采集：玩家进入检测","color":"gold"}
scoreboard objectives add mine_trigger trigger {"text":"连锁采集：触发器","color":"gold"}
# 8 - 命令存储
# 记住所使用数据包的版本(a.b.c)，计算公式为 a*256 + b*16 + c，存入dataVersion
# 如果发现主世界(0, -64, 0)出现箱子，说明是旧版本
# 由于旧版本没有记录数据包版本，故将lastDataVersion设为0
data merge storage mine:data {dataVersion: 1056}
execute in minecraft:overworld if block 0 -64 0 minecraft:chest run data merge storage mine:data {lastDataVersion: 0}

# 将游戏规则maxCommandChainLength设为至少1048576
execute store result score gamerule_max_command_chain_length mine_variables run gamerule maxCommandChainLength
execute if score gamerule_max_command_chain_length mine_variables matches ..1048575 run gamerule maxCommandChainLength 1048576
