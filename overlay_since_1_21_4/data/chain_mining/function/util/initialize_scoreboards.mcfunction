# 重置一些重要的记分项，以防变量出错，不能正常运行
scoreboard players reset * chain_mining_variables
scoreboard players reset * chain_mining_enter_detect

# 创建主记分项
scoreboard objectives add chain_mining_variables dummy {"translate": "chain_mining.scoreboard.variables", "color": "gold", "fallback": "连锁采集：变量板"}

# 1. 矿石
scoreboard objectives add chain_mining_coal_ore minecraft.mined:minecraft.coal_ore {"translate": "chain_mining.scoreboard.coal_ore", "color": "gold", "fallback": "连锁采集：挖煤矿石"}
scoreboard objectives add chain_mining_deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore {"translate": "chain_mining.scoreboard.deepslate_coal_ore", "color": "gold", "fallback": "连锁采集：挖深层煤矿石"}
scoreboard objectives add chain_mining_iron_ore minecraft.mined:minecraft.iron_ore {"translate": "chain_mining.scoreboard.iron_ore", "color": "gold", "fallback": "连锁采集：挖铁矿石"}
scoreboard objectives add chain_mining_deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore {"translate": "chain_mining.scoreboard.deepslate_iron_ore", "color": "gold", "fallback": "连锁采集：挖深层铁矿石"}
scoreboard objectives add chain_mining_copper_ore minecraft.mined:minecraft.copper_ore {"translate": "chain_mining.scoreboard.copper_ore", "color": "gold", "fallback": "连锁采集：挖铜矿石"}
scoreboard objectives add chain_mining_deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore {"translate": "chain_mining.scoreboard.deepslate_copper_ore", "color": "gold", "fallback": "连锁采集：挖深层铜矿石"}
scoreboard objectives add chain_mining_lapis_ore minecraft.mined:minecraft.lapis_ore {"translate": "chain_mining.scoreboard.lapis_ore", "color": "gold", "fallback": "连锁采集：挖青金石矿石"}
scoreboard objectives add chain_mining_deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore {"translate": "chain_mining.scoreboard.deepslate_lapis_ore", "color": "gold", "fallback": "连锁采集：挖深层青金石矿石"}
scoreboard objectives add chain_mining_gold_ore minecraft.mined:minecraft.gold_ore {"translate": "chain_mining.scoreboard.gold_ore", "color": "gold", "fallback": "连锁采集：挖金矿石"}
scoreboard objectives add chain_mining_deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore {"translate": "chain_mining.scoreboard.deepslate_gold_ore", "color": "gold", "fallback": "连锁采集：挖深层金矿石"}
scoreboard objectives add chain_mining_redstone_ore minecraft.mined:minecraft.redstone_ore {"translate": "chain_mining.scoreboard.redstone_ore", "color": "gold", "fallback": "连锁采集：挖红石矿石"}
scoreboard objectives add chain_mining_deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore {"translate": "chain_mining.scoreboard.deepslate_redstone_ore", "color": "gold", "fallback": "连锁采集：挖深层红石矿石"}
scoreboard objectives add chain_mining_diamond_ore minecraft.mined:minecraft.diamond_ore {"translate": "chain_mining.scoreboard.diamond_ore", "color": "gold", "fallback": "连锁采集：挖钻石矿石"}
scoreboard objectives add chain_mining_deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore {"translate": "chain_mining.scoreboard.deepslate_diamond_ore", "color": "gold", "fallback": "连锁采集：挖深层钻石矿石"}
scoreboard objectives add chain_mining_emerald_ore minecraft.mined:minecraft.emerald_ore {"translate": "chain_mining.scoreboard.emerald_ore", "color": "gold", "fallback": "连锁采集：挖绿宝石矿石"}
scoreboard objectives add chain_mining_deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore {"translate": "chain_mining.scoreboard.deepslate_emerald_ore", "color": "gold", "fallback": "连锁采集：挖深层绿宝石矿石"}
scoreboard objectives add chain_mining_amethyst_cluster minecraft.mined:minecraft.amethyst_cluster {"translate": "chain_mining.scoreboard.amethyst_cluster", "color": "gold", "fallback": "连锁采集：挖紫水晶簇"}
scoreboard objectives add chain_mining_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore {"translate": "chain_mining.scoreboard.nether_quartz_ore", "color": "gold", "fallback": "连锁采集：挖下界石英矿石"}
scoreboard objectives add chain_mining_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore {"translate": "chain_mining.scoreboard.nether_gold_ore", "color": "gold", "fallback": "连锁采集：挖下界金矿石"}
scoreboard objectives add chain_mining_gilded_blackstone minecraft.mined:minecraft.gilded_blackstone {"translate": "chain_mining.scoreboard.gilded_blackstone", "color": "gold", "fallback": "连锁采集：挖镶金黑石"}
scoreboard objectives add chain_mining_ancient_debris minecraft.mined:minecraft.ancient_debris {"translate": "chain_mining.scoreboard.ancient_debris", "color": "gold", "fallback": "连锁采集：挖远古残骸"}

# 2. 原木/菌柄(还包含红树根)
scoreboard objectives add chain_mining_oak_log minecraft.mined:minecraft.oak_log {"translate": "chain_mining.scoreboard.oak_log", "color": "gold", "fallback": "连锁采集：砍橡木原木"}
scoreboard objectives add chain_mining_spruce_log minecraft.mined:minecraft.spruce_log {"translate": "chain_mining.scoreboard.spruce_log", "color": "gold", "fallback": "连锁采集：砍云杉原木"}
scoreboard objectives add chain_mining_birch_log minecraft.mined:minecraft.birch_log {"translate": "chain_mining.scoreboard.birch_log", "color": "gold", "fallback": "连锁采集：砍白桦原木"}
scoreboard objectives add chain_mining_jungle_log minecraft.mined:minecraft.jungle_log {"translate": "chain_mining.scoreboard.jungle_log", "color": "gold", "fallback": "连锁采集：砍丛林原木"}
scoreboard objectives add chain_mining_acacia_log minecraft.mined:minecraft.acacia_log {"translate": "chain_mining.scoreboard.acacia_log", "color": "gold", "fallback": "连锁采集：砍金合欢原木"}
scoreboard objectives add chain_mining_dark_oak_log minecraft.mined:minecraft.dark_oak_log {"translate": "chain_mining.scoreboard.dark_oak_log", "color": "gold", "fallback": "连锁采集：砍深色橡木原木"}
scoreboard objectives add chain_mining_mangrove_log minecraft.mined:minecraft.mangrove_log {"translate": "chain_mining.scoreboard.mangrove_log", "color": "gold", "fallback": "连锁采集：砍红树原木"}
scoreboard objectives add chain_mining_mangrove_roots minecraft.mined:minecraft.mangrove_roots {"translate": "chain_mining.scoreboard.mangrove_roots", "color": "gold", "fallback": "连锁采集：挖红树根"}
scoreboard objectives add chain_mining_cherry_log minecraft.mined:minecraft.cherry_log {"translate": "chain_mining.scoreboard.cherry_log", "color": "gold", "fallback": "连锁采集：挖樱花原木"}
scoreboard objectives add chain_mining_pale_oak_log minecraft.mined:minecraft.pale_oak_log {"translate": "chain_mining.scoreboard.pale_oak_log", "color": "gold", "fallback": "连锁采集：挖苍白橡木原木"}
scoreboard objectives add chain_mining_crimson_stem minecraft.mined:minecraft.crimson_stem {"translate": "chain_mining.scoreboard.crimson_stem", "color": "gold", "fallback": "连锁采集：砍绯红菌柄"}
scoreboard objectives add chain_mining_warped_stem minecraft.mined:minecraft.warped_stem {"translate": "chain_mining.scoreboard.warped_stem", "color": "gold", "fallback": "连锁采集：砍诡异菌柄"}

# 3. 类石头(安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块)
scoreboard objectives add chain_mining_andesite minecraft.mined:minecraft.andesite {"translate": "chain_mining.scoreboard.andesite", "color": "gold", "fallback": "连锁采集：挖安山岩"}
scoreboard objectives add chain_mining_diorite minecraft.mined:minecraft.diorite {"translate": "chain_mining.scoreboard.diorite", "color": "gold", "fallback": "连锁采集：挖闪长岩"}
scoreboard objectives add chain_mining_granite minecraft.mined:minecraft.granite {"translate": "chain_mining.scoreboard.granite", "color": "gold", "fallback": "连锁采集：挖花岗岩"}
scoreboard objectives add chain_mining_tuff minecraft.mined:minecraft.tuff {"translate": "chain_mining.scoreboard.tuff", "color": "gold", "fallback": "连锁采集：挖凝灰岩"}
scoreboard objectives add chain_mining_calcite minecraft.mined:minecraft.calcite {"translate": "chain_mining.scoreboard.calcite", "color": "gold", "fallback": "连锁采集：挖方解石"}
scoreboard objectives add chain_mining_amethyst_block minecraft.mined:minecraft.amethyst_block {"translate": "chain_mining.scoreboard.amethyst_block", "color": "gold", "fallback": "连锁采集：挖紫水晶块"}
scoreboard objectives add chain_mining_magma_block minecraft.mined:minecraft.magma_block {"translate": "chain_mining.scoreboard.magma_block", "color": "gold", "fallback": "连锁采集：挖岩浆块"}

# 4. 荧石
scoreboard objectives add chain_mining_glowstone minecraft.mined:minecraft.glowstone {"translate": "chain_mining.scoreboard.glowstone", "color": "gold", "fallback": "连锁采集：挖荧石"}

# 5. 农作物1(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗、甜浆果丛和树脂团)
scoreboard objectives add chain_mining_wheat minecraft.mined:minecraft.wheat {"translate": "chain_mining.scoreboard.wheat", "color": "gold", "fallback": "连锁采集：挖小麦"}
scoreboard objectives add chain_mining_carrot minecraft.mined:minecraft.carrots {"translate": "chain_mining.scoreboard.carrots", "color": "gold", "fallback": "连锁采集：挖胡萝卜"}
scoreboard objectives add chain_mining_potato minecraft.mined:minecraft.potatoes {"translate": "chain_mining.scoreboard.potatoes", "color": "gold", "fallback": "连锁采集：挖马铃薯"}
scoreboard objectives add chain_mining_beetroot minecraft.mined:minecraft.beetroots {"translate": "chain_mining.scoreboard.beetroots", "color": "gold", "fallback": "连锁采集：挖甜菜根"}
scoreboard objectives add chain_mining_nether_wart minecraft.mined:minecraft.nether_wart {"translate": "chain_mining.scoreboard.nether_wart", "color": "gold", "fallback": "连锁采集：挖下界疣"}
scoreboard objectives add chain_mining_sugar_cane minecraft.mined:minecraft.sugar_cane {"translate": "chain_mining.scoreboard.sugar_cane", "color": "gold", "fallback": "连锁采集：挖甘蔗"}
scoreboard objectives add chain_mining_sweet_berry_bush minecraft.mined:minecraft.sweet_berry_bush {"translate": "chain_mining.scoreboard.sweet_berry_bush", "color": "gold", "fallback": "连锁采集：挖甜浆果丛"}
scoreboard objectives add chain_mining_resin_clump minecraft.mined:minecraft.resin_clump {"translate": "chain_mining.scoreboard.resin_clump", "color": "gold", "fallback": "连锁采集：挖树脂团"}

# 6. 农作物2(南瓜、西瓜、可可果和仙人掌)
scoreboard objectives add chain_mining_pumpkin minecraft.mined:minecraft.pumpkin {"translate": "chain_mining.scoreboard.pumpkin", "color": "gold", "fallback": "连锁采集：挖南瓜"}
scoreboard objectives add chain_mining_melon minecraft.mined:minecraft.melon {"translate": "chain_mining.scoreboard.melon", "color": "gold", "fallback": "连锁采集：挖西瓜"}
scoreboard objectives add chain_mining_cocoa minecraft.mined:minecraft.cocoa {"translate": "chain_mining.scoreboard.cocoa", "color": "gold", "fallback": "连锁采集：挖可可果"}
scoreboard objectives add chain_mining_cactus minecraft.mined:minecraft.cactus {"translate": "chain_mining.scoreboard.cactus", "color": "gold", "fallback": "连锁采集：挖仙人掌"}

# 7. 其他
scoreboard objectives add chain_mining_setting_ores dummy {"translate": "chain_mining.scoreboard.setting.ores", "color": "gold", "fallback": "连锁采集：农作物设置"}
scoreboard objectives add chain_mining_setting_logs dummy {"translate": "chain_mining.scoreboard.setting.logs", "color": "gold", "fallback": "连锁采集：原木/菌柄设置"}
scoreboard objectives add chain_mining_setting_stones dummy {"translate": "chain_mining.scoreboard.setting.stones", "color": "gold", "fallback": "连锁采集：类石头设置"}
scoreboard objectives add chain_mining_setting_glowstone dummy {"translate": "chain_mining.scoreboard.setting.glowstone", "color": "gold", "fallback": "连锁采集：荧石设置"}
scoreboard objectives add chain_mining_setting_crops_1 dummy {"translate": "chain_mining.scoreboard.setting.crops_1", "color": "gold", "fallback": "连锁采集：农作物1设置"}
scoreboard objectives add chain_mining_setting_crops_2 dummy {"translate": "chain_mining.scoreboard.setting.crops_2", "color": "gold", "fallback": "连锁采集：农作物2设置"}
scoreboard objectives add chain_mining_setting_loot dummy {"translate": "chain_mining.scoreboard.setting.loot", "color": "gold", "fallback": "连锁采集：物品生成设置"}
scoreboard objectives add chain_mining_enter_detect dummy {"translate": "chain_mining.scoreboard.enter_detect", "color": "gold", "fallback": "连锁采集：玩家进入检测"}
scoreboard objectives add chain_mining_trigger trigger {"translate": "chain_mining.scoreboard.trigger", "color": "gold", "fallback": "连锁采集：触发器"}

scoreboard objectives add chain_mining_constants dummy
scoreboard players set 16 chain_mining_constants 16
