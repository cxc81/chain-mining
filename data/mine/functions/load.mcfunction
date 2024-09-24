#规则设定
gamerule commandBlockOutput false
gamerule maxCommandChainLength 1000000
#注：更改maxCommandChainLength是因为默认值65536太小了，连锁几千个方块会出问题

#箱子存储设定
#注意：连锁采集只能在主世界和下界触发。
#使用标记(marker)实体，便于定位到箱子处
#要想在其他维度触发，现在还无法实现
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 -64 0 minecraft:chest
execute in minecraft:overworld unless entity @e[type=minecraft:marker,tag=mine,distance=0..] run summon minecraft:marker 0 -64 0 {Tags:["mine"]}
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_nether run setblock 0 0 0 minecraft:chest
execute in minecraft:the_nether unless entity @e[type=minecraft:marker,tag=mine,distance=0..] run summon minecraft:marker 0 0 0 {Tags:["mine"]}

#重置一些重要的记分板，以防变量出错，不能正常运行
scoreboard objectives remove mine
scoreboard objectives remove mine_enter

#1.18-1.18.2版本的数据包中的名字，现不使用，故移除
scoreboard objectives remove mine_coal
scoreboard objectives remove mine_coal2
scoreboard objectives remove mine_iron
scoreboard objectives remove mine_iron2
scoreboard objectives remove mine_copper
scoreboard objectives remove mine_copper2
scoreboard objectives remove mine_lapis
scoreboard objectives remove mine_lapis2
scoreboard objectives remove mine_gold
scoreboard objectives remove mine_gold2
scoreboard objectives remove mine_redstone
scoreboard objectives remove mine_redstone2
scoreboard objectives remove mine_diamond
scoreboard objectives remove mine_diamond2
scoreboard objectives remove mine_emerald
scoreboard objectives remove mine_emerald2
scoreboard objectives remove mine_nether_quartz
scoreboard objectives remove mine_nether_gold
scoreboard objectives remove mine_ancient
scoreboard objectives remove mine_settings
scoreboard objectives remove mine_setting_crops

#创建记分板
scoreboard objectives add mine dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6838\u5fc3","color":"gold"}
#1 - 矿石
scoreboard objectives add mine_coal_ore minecraft.mined:minecraft.coal_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u7164\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u7164\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_iron_ore minecraft.mined:minecraft.iron_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u94c1\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u94c1\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_copper_ore minecraft.mined:minecraft.copper_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u94dc\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u94dc\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_lapis_ore minecraft.mined:minecraft.lapis_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u9752\u91d1\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u9752\u91d1\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_gold_ore minecraft.mined:minecraft.gold_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u91d1\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u91d1\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_redstone_ore minecraft.mined:minecraft.redstone_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u7ea2\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u7ea2\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_diamond_ore minecraft.mined:minecraft.diamond_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u94bb\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u94bb\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_emerald_ore minecraft.mined:minecraft.emerald_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u7eff\u5b9d\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u6df1\u5c42\u7eff\u5b9d\u77f3\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u4e0b\u754c\u77f3\u82f1\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u4e0b\u754c\u91d1\u77ff\u77f3","color":"gold"}
scoreboard objectives add mine_gilded_blackstone minecraft.mined:minecraft.gilded_blackstone {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u9576\u91d1\u9ed1\u77f3","color":"gold"}
scoreboard objectives add mine_ancient_debris minecraft.mined:minecraft.ancient_debris {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u8fdc\u53e4\u6b8b\u9ab8","color":"gold"}
#2 - 原木/菌柄(还包含红树根)
scoreboard objectives add mine_oak minecraft.mined:minecraft.oak_log {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u6a61\u6728\u539f\u6728","color":"gold"}
scoreboard objectives add mine_spruce minecraft.mined:minecraft.spruce_log {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u4e91\u6749\u539f\u6728","color":"gold"}
scoreboard objectives add mine_birch minecraft.mined:minecraft.birch_log {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u767d\u6866\u539f\u6728","color":"gold"}
scoreboard objectives add mine_jungle minecraft.mined:minecraft.jungle_log {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u4e1b\u6797\u539f\u6728","color":"gold"}
scoreboard objectives add mine_acacia minecraft.mined:minecraft.acacia_log {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u91d1\u5408\u6b22\u539f\u6728","color":"gold"}
scoreboard objectives add mine_dark_oak minecraft.mined:minecraft.dark_oak_log {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u6df1\u8272\u6a61\u6728\u539f\u6728","color":"gold"}
scoreboard objectives add mine_mangrove minecraft.mined:minecraft.mangrove_log {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u7ea2\u6811\u539f\u6728","color":"gold"}
scoreboard objectives add mine_mangrove_roots minecraft.mined:minecraft.mangrove_roots {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u7ea2\u6811\u6839","color":"gold"}
scoreboard objectives add mine_crimson minecraft.mined:minecraft.crimson_stem {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u7eef\u7ea2\u83cc\u67c4","color":"gold"}
scoreboard objectives add mine_warped minecraft.mined:minecraft.warped_stem {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u780d\u8be1\u5f02\u83cc\u67c4","color":"gold"}
#3 - 类石头(安山岩、闪长岩、花岗岩、凝灰岩、方解石)
scoreboard objectives add mine_andesite minecraft.mined:minecraft.andesite {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u5b89\u5c71\u5ca9","color":"gold"}
scoreboard objectives add mine_diorite minecraft.mined:minecraft.diorite {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u95ea\u957f\u5ca9","color":"gold"}
scoreboard objectives add mine_granite minecraft.mined:minecraft.granite {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u82b1\u5c97\u5ca9","color":"gold"}
scoreboard objectives add mine_tuff minecraft.mined:minecraft.tuff {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u51dd\u7070\u5ca9","color":"gold"}
scoreboard objectives add mine_calcite minecraft.mined:minecraft.calcite {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u65b9\u89e3\u77f3","color":"gold"}
#4 - 荧石
scoreboard objectives add mine_glowstone minecraft.mined:minecraft.glowstone {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u8367\u77f3","color":"gold"}
#5 - 农作物1(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗)
scoreboard objectives add mine_wheat minecraft.mined:minecraft.wheat {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u5c0f\u9ea6","color":"gold"}
scoreboard objectives add mine_carrot minecraft.mined:minecraft.carrots {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u80e1\u841d\u535c","color":"gold"}
scoreboard objectives add mine_potato minecraft.mined:minecraft.potatoes {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u9a6c\u94c3\u85af","color":"gold"}
scoreboard objectives add mine_beetroot minecraft.mined:minecraft.beetroots {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u751c\u83dc\u6839","color":"gold"}
scoreboard objectives add mine_nether_wart minecraft.mined:minecraft.nether_wart {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u4e0b\u754c\u75a3","color":"gold"}
scoreboard objectives add mine_sugar_cane minecraft.mined:minecraft.sugar_cane {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u7518\u8517","color":"gold"}
#6 - 农作物2(南瓜、西瓜、可可果)
scoreboard objectives add mine_pumpkin minecraft.mined:minecraft.pumpkin {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u5357\u74dc","color":"gold"}
scoreboard objectives add mine_melon minecraft.mined:minecraft.melon {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u897f\u74dc","color":"gold"}
scoreboard objectives add mine_cocoa minecraft.mined:minecraft.cocoa {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u6316\u53ef\u53ef\u679c","color":"gold"}
#7 - 其他
scoreboard objectives add mine_setting_ores dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u519c\u4f5c\u7269\u8bbe\u7f6e","color":"gold"}
scoreboard objectives add mine_setting_logs dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u539f\u6728/\u83cc\u67c4\u8bbe\u7f6e","color":"gold"}
scoreboard objectives add mine_setting_stones dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u7c7b\u77f3\u5934\u8bbe\u7f6e","color":"gold"}
scoreboard objectives add mine_setting_glowstone dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u8367\u77f3\u8bbe\u7f6e","color":"gold"}
scoreboard objectives add mine_setting_crops_1 dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u519c\u4f5c\u72691\u8bbe\u7f6e","color":"gold"}
scoreboard objectives add mine_setting_crops_2 dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u519c\u4f5c\u72692\u8bbe\u7f6e","color":"gold"}
scoreboard objectives add mine_setting_loot dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u7269\u54c1\u751f\u6210\u70b9\u8bbe\u7f6e","color":"gold"}
scoreboard objectives add mine_enter dummy {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u73a9\u5bb6\u8fdb\u5165\u68c0\u6d4b","color":"gold"}
scoreboard objectives add mine_trigger trigger {"text":"\u8fde\u9501\u91c7\u96c6\uff1a\u89e6\u53d1\u5668","color":"gold"}