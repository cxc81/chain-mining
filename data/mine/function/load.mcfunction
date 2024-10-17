# 重置一些重要的记分项，以防变量出错，不能正常运行
scoreboard players reset * mine_variables
scoreboard players reset * mine_enter_detect

# 创建主记分项
scoreboard objectives add mine_variables dummy {"translate": "mine.scoreboard.variables", "color": "gold", "fallback": "连锁采集：变量板"}

# 1. 矿石
scoreboard objectives add mine_coal_ore minecraft.mined:minecraft.coal_ore {"translate": "mine.scoreboard.coal_ore", "color": "gold", "fallback": "连锁采集：挖煤矿石"}
scoreboard objectives add mine_deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore {"translate": "mine.scoreboard.deepslate_coal_ore", "color": "gold", "fallback": "连锁采集：挖深层煤矿石"}
scoreboard objectives add mine_iron_ore minecraft.mined:minecraft.iron_ore {"translate": "mine.scoreboard.iron_ore", "color": "gold", "fallback": "连锁采集：挖铁矿石"}
scoreboard objectives add mine_deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore {"translate": "mine.scoreboard.deepslate_iron_ore", "color": "gold", "fallback": "连锁采集：挖深层铁矿石"}
scoreboard objectives add mine_copper_ore minecraft.mined:minecraft.copper_ore {"translate": "mine.scoreboard.copper_ore", "color": "gold", "fallback": "连锁采集：挖铜矿石"}
scoreboard objectives add mine_deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore {"translate": "mine.scoreboard.deepslate_copper_ore", "color": "gold", "fallback": "连锁采集：挖深层铜矿石"}
scoreboard objectives add mine_lapis_ore minecraft.mined:minecraft.lapis_ore {"translate": "mine.scoreboard.lapis_ore", "color": "gold", "fallback": "连锁采集：挖青金石矿石"}
scoreboard objectives add mine_deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore {"translate": "mine.scoreboard.deepslate_lapis_ore", "color": "gold", "fallback": "连锁采集：挖深层青金石矿石"}
scoreboard objectives add mine_gold_ore minecraft.mined:minecraft.gold_ore {"translate": "mine.scoreboard.gold_ore", "color": "gold", "fallback": "连锁采集：挖金矿石"}
scoreboard objectives add mine_deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore {"translate": "mine.scoreboard.deepslate_gold_ore", "color": "gold", "fallback": "连锁采集：挖深层金矿石"}
scoreboard objectives add mine_redstone_ore minecraft.mined:minecraft.redstone_ore {"translate": "mine.scoreboard.redstone_ore", "color": "gold", "fallback": "连锁采集：挖红石矿石"}
scoreboard objectives add mine_deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore {"translate": "mine.scoreboard.deepslate_redstone_ore", "color": "gold", "fallback": "连锁采集：挖深层红石矿石"}
scoreboard objectives add mine_diamond_ore minecraft.mined:minecraft.diamond_ore {"translate": "mine.scoreboard.diamond_ore", "color": "gold", "fallback": "连锁采集：挖钻石矿石"}
scoreboard objectives add mine_deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore {"translate": "mine.scoreboard.deepslate_diamond_ore", "color": "gold", "fallback": "连锁采集：挖深层钻石矿石"}
scoreboard objectives add mine_emerald_ore minecraft.mined:minecraft.emerald_ore {"translate": "mine.scoreboard.emerald_ore", "color": "gold", "fallback": "连锁采集：挖绿宝石矿石"}
scoreboard objectives add mine_deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore {"translate": "mine.scoreboard.deepslate_emerald_ore", "color": "gold", "fallback": "连锁采集：挖深层绿宝石矿石"}
scoreboard objectives add mine_amethyst_cluster minecraft.mined:minecraft.amethyst_cluster {"translate": "mine.scoreboard.amethyst_cluster", "color": "gold", "fallback": "连锁采集：挖紫水晶簇"}
scoreboard objectives add mine_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore {"translate": "mine.scoreboard.nether_quartz_ore", "color": "gold", "fallback": "连锁采集：挖下界石英矿石"}
scoreboard objectives add mine_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore {"translate": "mine.scoreboard.nether_gold_ore", "color": "gold", "fallback": "连锁采集：挖下界金矿石"}
scoreboard objectives add mine_gilded_blackstone minecraft.mined:minecraft.gilded_blackstone {"translate": "mine.scoreboard.gilded_blackstone", "color": "gold", "fallback": "连锁采集：挖镶金黑石"}
scoreboard objectives add mine_ancient_debris minecraft.mined:minecraft.ancient_debris {"translate": "mine.scoreboard.ancient_debris", "color": "gold", "fallback": "连锁采集：挖远古残骸"}

# 2. 原木/菌柄(还包含红树根)
scoreboard objectives add mine_oak_log minecraft.mined:minecraft.oak_log {"translate": "mine.scoreboard.oak_log", "color": "gold", "fallback": "连锁采集：砍橡木原木"}
scoreboard objectives add mine_spruce_log minecraft.mined:minecraft.spruce_log {"translate": "mine.scoreboard.spruce_log", "color": "gold", "fallback": "连锁采集：砍云杉原木"}
scoreboard objectives add mine_birch_log minecraft.mined:minecraft.birch_log {"translate": "mine.scoreboard.birch_log", "color": "gold", "fallback": "连锁采集：砍白桦原木"}
scoreboard objectives add mine_jungle_log minecraft.mined:minecraft.jungle_log {"translate": "mine.scoreboard.jungle_log", "color": "gold", "fallback": "连锁采集：砍丛林原木"}
scoreboard objectives add mine_acacia_log minecraft.mined:minecraft.acacia_log {"translate": "mine.scoreboard.acacia_log", "color": "gold", "fallback": "连锁采集：砍金合欢原木"}
scoreboard objectives add mine_dark_oak_log minecraft.mined:minecraft.dark_oak_log {"translate": "mine.scoreboard.dark_oak_log", "color": "gold", "fallback": "连锁采集：砍深色橡木原木"}
scoreboard objectives add mine_mangrove_log minecraft.mined:minecraft.mangrove_log {"translate": "mine.scoreboard.mangrove_log", "color": "gold", "fallback": "连锁采集：砍红树原木"}
scoreboard objectives add mine_mangrove_roots minecraft.mined:minecraft.mangrove_roots {"translate": "mine.scoreboard.mangrove_roots", "color": "gold", "fallback": "连锁采集：挖红树根"}
scoreboard objectives add mine_cherry_log minecraft.mined:minecraft.cherry_log {"translate": "mine.scoreboard.cherry_log", "color": "gold", "fallback": "连锁采集：挖红树根"}
scoreboard objectives add mine_crimson_stem minecraft.mined:minecraft.crimson_stem {"translate": "mine.scoreboard.crimson_stem", "color": "gold", "fallback": "连锁采集：砍绯红菌柄"}
scoreboard objectives add mine_warped_stem minecraft.mined:minecraft.warped_stem {"translate": "mine.scoreboard.warped_stem", "color": "gold", "fallback": "连锁采集：砍诡异菌柄"}

# 3. 类石头(安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块)
scoreboard objectives add mine_andesite minecraft.mined:minecraft.andesite {"translate": "mine.scoreboard.andesite", "color": "gold", "fallback": "连锁采集：挖安山岩"}
scoreboard objectives add mine_diorite minecraft.mined:minecraft.diorite {"translate": "mine.scoreboard.diorite", "color": "gold", "fallback": "连锁采集：挖闪长岩"}
scoreboard objectives add mine_granite minecraft.mined:minecraft.granite {"translate": "mine.scoreboard.granite", "color": "gold", "fallback": "连锁采集：挖花岗岩"}
scoreboard objectives add mine_tuff minecraft.mined:minecraft.tuff {"translate": "mine.scoreboard.tuff", "color": "gold", "fallback": "连锁采集：挖凝灰岩"}
scoreboard objectives add mine_calcite minecraft.mined:minecraft.calcite {"translate": "mine.scoreboard.calcite", "color": "gold", "fallback": "连锁采集：挖方解石"}
scoreboard objectives add mine_amethyst_block minecraft.mined:minecraft.amethyst_block {"translate": "mine.scoreboard.amethyst_block", "color": "gold", "fallback": "连锁采集：挖紫水晶块"}
scoreboard objectives add mine_magma_block minecraft.mined:minecraft.magma_block {"translate": "mine.scoreboard.magma_block", "color": "gold", "fallback": "连锁采集：挖岩浆块"}

# 4. 荧石
scoreboard objectives add mine_glowstone minecraft.mined:minecraft.glowstone {"translate": "mine.scoreboard.glowstone", "color": "gold", "fallback": "连锁采集：挖荧石"}

# 5. 农作物1(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗和甜浆果丛)
scoreboard objectives add mine_wheat minecraft.mined:minecraft.wheat {"translate": "mine.scoreboard.wheat", "color": "gold", "fallback": "连锁采集：挖小麦"}
scoreboard objectives add mine_carrot minecraft.mined:minecraft.carrots {"translate": "mine.scoreboard.carrots", "color": "gold", "fallback": "连锁采集：挖胡萝卜"}
scoreboard objectives add mine_potato minecraft.mined:minecraft.potatoes {"translate": "mine.scoreboard.potatoes", "color": "gold", "fallback": "连锁采集：挖马铃薯"}
scoreboard objectives add mine_beetroot minecraft.mined:minecraft.beetroots {"translate": "mine.scoreboard.beetroots", "color": "gold", "fallback": "连锁采集：挖甜菜根"}
scoreboard objectives add mine_nether_wart minecraft.mined:minecraft.nether_wart {"translate": "mine.scoreboard.nether_wart", "color": "gold", "fallback": "连锁采集：挖下界疣"}
scoreboard objectives add mine_sugar_cane minecraft.mined:minecraft.sugar_cane {"translate": "mine.scoreboard.sugar_cane", "color": "gold", "fallback": "连锁采集：挖甘蔗"}
scoreboard objectives add mine_sweet_berry_bush minecraft.mined:minecraft.sweet_berry_bush {"translate": "mine.scoreboard.sweet_berry_bush", "color": "gold", "fallback": "连锁采集：挖甜浆果丛"}

# 6. 农作物2(南瓜、西瓜、可可果和仙人掌)
scoreboard objectives add mine_pumpkin minecraft.mined:minecraft.pumpkin {"translate": "mine.scoreboard.pumpkin", "color": "gold", "fallback": "连锁采集：挖南瓜"}
scoreboard objectives add mine_melon minecraft.mined:minecraft.melon {"translate": "mine.scoreboard.melon", "color": "gold", "fallback": "连锁采集：挖西瓜"}
scoreboard objectives add mine_cocoa minecraft.mined:minecraft.cocoa {"translate": "mine.scoreboard.cocoa", "color": "gold", "fallback": "连锁采集：挖可可果"}
scoreboard objectives add mine_cactus minecraft.mined:minecraft.cactus {"translate": "mine.scoreboard.cactus", "color": "gold", "fallback": "连锁采集：挖仙人掌"}

# 7. 其他
scoreboard objectives add mine_setting_ores dummy {"translate": "mine.scoreboard.setting.ores", "color": "gold", "fallback": "连锁采集：农作物设置"}
scoreboard objectives add mine_setting_logs dummy {"translate": "mine.scoreboard.setting.logs", "color": "gold", "fallback": "连锁采集：原木/菌柄设置"}
scoreboard objectives add mine_setting_stones dummy {"translate": "mine.scoreboard.setting.stones", "color": "gold", "fallback": "连锁采集：类石头设置"}
scoreboard objectives add mine_setting_glowstone dummy {"translate": "mine.scoreboard.setting.glowstone", "color": "gold", "fallback": "连锁采集：荧石设置"}
scoreboard objectives add mine_setting_crops_1 dummy {"translate": "mine.scoreboard.setting.crops_1", "color": "gold", "fallback": "连锁采集：农作物1设置"}
scoreboard objectives add mine_setting_crops_2 dummy {"translate": "mine.scoreboard.setting.crops_2", "color": "gold", "fallback": "连锁采集：农作物2设置"}
scoreboard objectives add mine_setting_loot dummy {"translate": "mine.scoreboard.setting.loot", "color": "gold", "fallback": "连锁采集：物品生成设置"}
scoreboard objectives add mine_enter_detect dummy {"translate": "mine.scoreboard.enter_detect", "color": "gold", "fallback": "连锁采集：玩家进入检测"}
scoreboard objectives add mine_trigger trigger {"translate": "mine.scoreboard.trigger", "color": "gold", "fallback": "连锁采集：触发器"}

scoreboard objectives add Const dummy
scoreboard players set 16 Const 16

# 8. 其他操作
#   如果发现了mine记分项，且没有dataVersion字段，可以确定是旧版本，此时将lastDataVersion置为0
function mine:control/check_version/legacy_version_process
#   设置当前使用的数据包版本(a.b.c)，计算公式为 a*256 + b*16 + c，存入dataVersion
data merge storage mine:data {dataVersion: 1091}
#   设置当前支持的Minecraft版本
data merge storage mine:data {data: {supported_minecraft_versions_str: "1.21 - 1.21.2"}}
#   将dataVersion和lastDataVersion处理成字符串
function mine:control/check_version/convert_to_string/main
#   将游戏规则maxCommandChainLength设为至少1048576
execute store result score gamerule_max_command_chain_length mine_variables run gamerule maxCommandChainLength
execute if score gamerule_max_command_chain_length mine_variables matches ..1048575 run gamerule maxCommandChainLength 1048576
