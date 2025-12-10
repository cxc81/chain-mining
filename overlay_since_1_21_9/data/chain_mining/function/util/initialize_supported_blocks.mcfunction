# @since 1.21.9

# 主世界矿石(煤矿石、铜矿石、铁矿石、青金石矿石、红石矿石、金矿石、钻石矿石、绿宝石矿石和紫水晶簇)
data modify storage chain_mining:data data.supported_blocks.overworld_ores set value {\
    num_block_types: 9, \
    message_lines: [\
        [{text: ""}, {sprite: "minecraft:block/coal_ore", color: "white"}, {sprite: "minecraft:block/deepslate_coal_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.coal_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/copper_ore", color: "white"}, {sprite: "minecraft:block/deepslate_copper_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.copper_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/iron_ore", color: "white"}, {sprite: "minecraft:block/deepslate_iron_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.iron_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/lapis_ore", color: "white"}, {sprite: "minecraft:block/deepslate_lapis_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.lapis_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/redstone_ore", color: "white"}, {sprite: "minecraft:block/deepslate_redstone_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.redstone_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/gold_ore", color: "white"}, {sprite: "minecraft:block/deepslate_gold_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.gold_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/diamond_ore", color: "white"}, {sprite: "minecraft:block/deepslate_diamond_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.diamond_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/emerald_ore", color: "white"}, {sprite: "minecraft:block/deepslate_emerald_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.emerald_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/amethyst_cluster", color: "white"}, {text: " "}, {translate: "block.minecraft.amethyst_cluster"}], \
    ], \
}
# 下界矿石(下界石英矿石、下界金矿石、镶金黑石、远古残骸和荧石)
data modify storage chain_mining:data data.supported_blocks.nether_ores set value {\
    num_block_types: 5, \
    message_lines: [\
        [{text: ""}, {sprite: "minecraft:block/nether_quartz_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.nether_quartz_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/nether_gold_ore", color: "white"}, {text: " "}, {translate: "block.minecraft.nether_gold_ore"}], \
        [{text: ""}, {sprite: "minecraft:block/gilded_blackstone", color: "white"}, {text: " "}, {translate: "block.minecraft.gilded_blackstone"}], \
        [{text: ""}, {sprite: "minecraft:block/ancient_debris_side", color: "white"}, {text: " "}, {translate: "block.minecraft.ancient_debris"}], \
        [{text: ""}, {sprite: "minecraft:block/glowstone", color: "white"}, {text: " "}, {translate: "block.minecraft.glowstone"}], \
    ], \
}
# 原木/菌柄(橡木原木、云杉原木、白桦原木、丛林原木、金合欢原木、深色橡木原木、红树原木、红树根、樱花原木、苍白橡木原木、绯红菌柄和诡异菌柄)
data modify storage chain_mining:data data.supported_blocks.logs set value {\
    num_block_types: 12, \
    message_lines: [\
        [{text: ""}, {sprite: "minecraft:block/oak_log", color: "white"}, {text: " "}, {translate: "block.minecraft.oak_log"}], \
        [{text: ""}, {sprite: "minecraft:block/spruce_log", color: "white"}, {text: " "}, {translate: "block.minecraft.spruce_log"}], \
        [{text: ""}, {sprite: "minecraft:block/birch_log", color: "white"}, {text: " "}, {translate: "block.minecraft.birch_log"}], \
        [{text: ""}, {sprite: "minecraft:block/jungle_log", color: "white"}, {text: " "}, {translate: "block.minecraft.jungle_log"}], \
        [{text: ""}, {sprite: "minecraft:block/acacia_log", color: "white"}, {text: " "}, {translate: "block.minecraft.acacia_log"}], \
        [{text: ""}, {sprite: "minecraft:block/dark_oak_log", color: "white"}, {text: " "}, {translate: "block.minecraft.dark_oak_log"}], \
        [{text: ""}, {sprite: "minecraft:block/mangrove_log", color: "white"}, {text: " "}, {translate: "block.minecraft.mangrove_log"}], \
        [{text: ""}, {sprite: "minecraft:block/mangrove_roots_top", color: "white"}, {text: " "}, {translate: "block.minecraft.mangrove_roots"}], \
        [{text: ""}, {sprite: "minecraft:block/cherry_log", color: "white", color: "white"}, {text: " "}, {translate: "block.minecraft.cherry_log"}], \
        [{text: ""}, {sprite: "minecraft:block/pale_oak_log", color: "white"}, {text: " "}, {translate: "block.minecraft.pale_oak_log"}], \
        [{text: ""}, {sprite: "minecraft:block/crimson_stem", color: "white"}, {text: " "}, {translate: "block.minecraft.crimson_stem"}], \
        [{text: ""}, {sprite: "minecraft:block/warped_stem", color: "white"}, {text: " "}, {translate: "block.minecraft.warped_stem"}], \
    ], \
}
# 岩石(安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块)
data modify storage chain_mining:data data.supported_blocks.rocks set value {\
    num_block_types: 7, \
    message_lines: [\
        [{text: ""}, {sprite: "minecraft:block/andesite", color: "white"}, {text: " "}, {translate: "block.minecraft.andesite"}], \
        [{text: ""}, {sprite: "minecraft:block/diorite", color: "white"}, {text: " "}, {translate: "block.minecraft.diorite"}], \
        [{text: ""}, {sprite: "minecraft:block/granite", color: "white"}, {text: " "}, {translate: "block.minecraft.granite"}], \
        [{text: ""}, {sprite: "minecraft:block/tuff", color: "white"}, {text: " "}, {translate: "block.minecraft.tuff"}], \
        [{text: ""}, {sprite: "minecraft:block/calcite", color: "white"}, {text: " "}, {translate: "block.minecraft.calcite"}], \
        [{text: ""}, {sprite: "minecraft:block/amethyst_block", color: "white"}, {text: " "}, {translate: "block.minecraft.amethyst_block"}], \
        [{text: ""}, {sprite: "minecraft:block/magma", color: "white"}, {text: " "}, {translate: "block.minecraft.magma_block"}], \
    ], \
}
# 软作物(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甜浆果丛、火把花、瓶子草植株、甘蔗、洞穴藤蔓和树脂团)
data modify storage chain_mining:data data.supported_blocks.soft_crops set value {\
    num_block_types: 11, \
    message_lines: [\
        [{text: ""}, {sprite: "minecraft:block/wheat_stage7", color: "white"}, {text: " "}, {translate: "block.minecraft.wheat"}], \
        [{text: ""}, {sprite: "minecraft:block/carrots_stage3", color: "white"}, {text: " "}, {translate: "block.minecraft.carrots"}], \
        [{text: ""}, {sprite: "minecraft:block/potatoes_stage3", color: "white"}, {text: " "}, {translate: "block.minecraft.potatoes"}], \
        [{text: ""}, {sprite: "minecraft:block/beetroots_stage3", color: "white"}, {text: " "}, {translate: "block.minecraft.beetroots"}], \
        [{text: ""}, {sprite: "minecraft:block/nether_wart_stage2", color: "white"}, {text: " "}, {translate: "block.minecraft.nether_wart"}], \
        [{text: ""}, {sprite: "minecraft:block/sweet_berry_bush_stage3", color: "white"}, {text: " "}, {translate: "block.minecraft.sweet_berry_bush"}], \
        [{text: ""}, {sprite: "minecraft:block/torchflower", color: "white"}, {text: " "}, {translate: "block.minecraft.torchflower"}], \
        [{text: ""}, {sprite: "minecraft:block/pitcher_crop_top_stage_4", color: "white"}, {text: " "}, {translate: "block.minecraft.pitcher_crop"}], \
        [{text: ""}, {sprite: "minecraft:block/sugar_cane", color: "white"}, {text: " "}, {translate: "block.minecraft.sugar_cane"}], \
        [{text: ""}, {sprite: "minecraft:block/cave_vines_lit", color: "white"}, {text: " "}, {translate: "block.minecraft.cave_vines"}], \
        [{text: ""}, {sprite: "minecraft:block/resin_clump", color: "white"}, {text: " "}, {translate: "block.minecraft.resin_clump"}], \
    ], \
}
# 硬作物(南瓜、雕刻南瓜、西瓜、可可果、仙人掌和竹子)
data modify storage chain_mining:data data.supported_blocks.hard_crops set value {\
    num_block_types: 6, \
    message_lines: [\
        [{text: ""}, {sprite: "minecraft:block/pumpkin_side", color: "white"}, {text: " "}, {translate: "block.minecraft.pumpkin"}], \
        [{text: ""}, {sprite: "minecraft:block/carved_pumpkin", color: "white"}, {text: " "}, {translate: "block.minecraft.carved_pumpkin"}], \
        [{text: ""}, {sprite: "minecraft:block/melon_side", color: "white"}, {text: " "}, {translate: "block.minecraft.melon"}], \
        [{text: ""}, {sprite: "minecraft:block/cocoa_stage2", color: "white"}, {text: " "}, {translate: "block.minecraft.cocoa"}], \
        [{text: ""}, {sprite: "minecraft:block/cactus_side", color: "white"}, {text: " "}, {translate: "block.minecraft.cactus"}], \
        [{text: ""}, {sprite: "minecraft:block/bamboo_small_leaves", color: "white"}, {text: " "}, {translate: "block.minecraft.bamboo"}], \
    ], \
}
