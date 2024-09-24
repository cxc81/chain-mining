#规则设定
gamerule commandBlockOutput false
gamerule maxCommandChainLength 1000000
#注：更改maxCommandChainLength是因为默认值65536太小了，连锁几千个方块会出问题

#箱子存储设定
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 0 0 minecraft:chest
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_nether run setblock 0 0 0 minecraft:chest

#重置一些重要的记分板，以防变量出错，不能正常运行
scoreboard objectives remove mine
scoreboard objectives remove mine_enter

#创建记分板
#1 - 矿石
scoreboard objectives add mine dummy {"text":"\u8fde\u9501\u91c7\u96c6"}
scoreboard objectives add mine_coal minecraft.mined:minecraft.coal_ore {"text":"\u6316\u7164\u77ff\u77f3"}
scoreboard objectives add mine_coal2 minecraft.mined:minecraft.deepslate_coal_ore {"text":"\u6316\u6df1\u5c42\u7164\u77ff\u77f3"}
scoreboard objectives add mine_iron minecraft.mined:minecraft.iron_ore {"text":"\u6316\u94c1\u77ff\u77f3"}
scoreboard objectives add mine_iron2 minecraft.mined:minecraft.deepslate_iron_ore {"text":"\u6316\u6df1\u5c42\u94c1\u77ff\u77f3"}
scoreboard objectives add mine_copper minecraft.mined:minecraft.copper_ore {"text":"\u6316\u94dc\u77ff\u77f3"}
scoreboard objectives add mine_copper2 minecraft.mined:minecraft.deepslate_copper_ore {"text":"\u6316\u6df1\u5c42\u94dc\u77ff\u77f3"}
scoreboard objectives add mine_lapis minecraft.mined:minecraft.lapis_ore {"text":"\u6316\u9752\u91d1\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_lapis2 minecraft.mined:minecraft.deepslate_lapis_ore {"text":"\u6316\u6df1\u5c42\u9752\u91d1\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_gold minecraft.mined:minecraft.gold_ore {"text":"\u6316\u91d1\u77ff\u77f3"}
scoreboard objectives add mine_gold2 minecraft.mined:minecraft.deepslate_gold_ore {"text":"\u6316\u6df1\u5c42\u91d1\u77ff\u77f3"}
scoreboard objectives add mine_redstone minecraft.mined:minecraft.redstone_ore {"text":"\u6316\u7ea2\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_redstone2 minecraft.mined:minecraft.deepslate_redstone_ore {"text":"\u6316\u6df1\u5c42\u7ea2\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_diamond minecraft.mined:minecraft.diamond_ore {"text":"\u6316\u94bb\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_diamond2 minecraft.mined:minecraft.deepslate_diamond_ore {"text":"\u6316\u6df1\u5c42\u94bb\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_emerald minecraft.mined:minecraft.emerald_ore {"text":"\u6316\u7eff\u5b9d\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_emerald2 minecraft.mined:minecraft.deepslate_emerald_ore {"text":"\u6316\u6df1\u5c42\u7eff\u5b9d\u77f3\u77ff\u77f3"}
scoreboard objectives add mine_n_quartz minecraft.mined:minecraft.nether_quartz_ore {"text":"\u6316\u4e0b\u754c\u77f3\u82f1\u77ff\u77f3"}
scoreboard objectives add mine_n_gold minecraft.mined:minecraft.nether_gold_ore {"text":"\u6316\u4e0b\u754c\u91d1\u77ff\u77f3"}
scoreboard objectives add mine_ancient minecraft.mined:minecraft.ancient_debris {"text":"\u6316\u8fdc\u53e4\u6b8b\u9ab8"}
#2 - 原木/菌柄
scoreboard objectives add mine_oak minecraft.mined:minecraft.oak_log {"text":"\u780d\u6a61\u6728\u539f\u6728"}
scoreboard objectives add mine_spruce minecraft.mined:minecraft.spruce_log {"text":"\u780d\u4e91\u6749\u539f\u6728"}
scoreboard objectives add mine_birch minecraft.mined:minecraft.birch_log {"text":"\u780d\u767d\u6866\u539f\u6728"}
scoreboard objectives add mine_jungle minecraft.mined:minecraft.jungle_log {"text":"\u780d\u4e1b\u6797\u539f\u6728"}
scoreboard objectives add mine_acacia minecraft.mined:minecraft.acacia_log {"text":"\u780d\u91d1\u5408\u6b22\u539f\u6728"}
scoreboard objectives add mine_dark_oak minecraft.mined:minecraft.dark_oak_log {"text":"\u780d\u6df1\u8272\u6a61\u6728\u539f\u6728"}
scoreboard objectives add mine_crimson minecraft.mined:minecraft.crimson_stem {"text":"\u780d\u7eef\u7ea2\u83cc\u67c4"}
scoreboard objectives add mine_warped minecraft.mined:minecraft.warped_stem {"text":"\u780d\u8be1\u5f02\u83cc\u67c4"}
#3 - 类石头(安山岩、闪长岩、花岗岩、凝灰岩)
scoreboard objectives add mine_andesite minecraft.mined:minecraft.andesite {"text":"\u6316\u5b89\u5c71\u5ca9"}
scoreboard objectives add mine_diorite minecraft.mined:minecraft.diorite {"text":"\u6316\u95ea\u957f\u5ca9"}
scoreboard objectives add mine_granite minecraft.mined:minecraft.granite {"text":"\u6316\u82b1\u5c97\u5ca9"}
scoreboard objectives add mine_tuff minecraft.mined:minecraft.tuff {"text":"\u6316\u51dd\u7070\u5ca9"}
scoreboard objectives add mine_calcite minecraft.mined:minecraft.calcite {"text":"\u6316\u65b9\u89e3\u77f3"}
#4 - 荧石
scoreboard objectives add mine_glowstone minecraft.mined:minecraft.glowstone {"text":"\u6316\u8367\u77f3"}
#5 - 农作物(小麦、胡萝卜、马铃薯、甜菜根)
scoreboard objectives add mine_wheat minecraft.mined:minecraft.wheat {"text":"\u6316\u5c0f\u9ea6"}
scoreboard objectives add mine_carrot minecraft.mined:minecraft.carrots {"text":"\u6316\u80e1\u841d\u535c"}
scoreboard objectives add mine_potato minecraft.mined:minecraft.potatoes {"text":"\u6316\u9a6c\u94c3\u85af"}
scoreboard objectives add mine_beetroot minecraft.mined:minecraft.beetroots {"text":"\u6316\u751c\u83dc\u6839"}
scoreboard objectives add mine_pumpkin minecraft.mined:minecraft.pumpkin {"text":"\u6316\u5357\u74dc"}
scoreboard objectives add mine_melon minecraft.mined:minecraft.melon {"text":"\u6316\u897f\u74dc"}
scoreboard objectives add mine_nether_wart minecraft.mined:minecraft.nether_wart {"text":"\u6316\u4e0b\u754c\u75a3"}
#4 - 其他
scoreboard objectives add mine_enter dummy {"text":"\u73a9\u5bb6\u8fdb\u5165\u68c0\u6d4b"}
execute store success score first_load mine run scoreboard objectives add mine_settings dummy {"text":"\u8fde\u9501\u91c7\u96c6\u8bbe\u7f6e"}
execute if score first_load mine matches 1 run scoreboard players set ores mine_settings 1
execute if score first_load mine matches 1 run scoreboard players set logs mine_settings 1
execute if score first_load mine matches 1 run scoreboard players set stones mine_settings 0
execute if score first_load mine matches 1 run scoreboard players set glowstone mine_settings 1
execute if score first_load mine matches 1 run scoreboard players set crops mine_settings 1
scoreboard objectives add mine_trigger trigger {"text":"\u8fde\u9501\u91c7\u96c6\u8bbe\u7f6e\u5668"}