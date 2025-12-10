# @until 1.21.9

# 主世界矿石(煤矿石、铜矿石、铁矿石、青金石矿石、红石矿石、金矿石、钻石矿石、绿宝石矿石和紫水晶簇)
data modify storage chain_mining:data data.supported_blocks.overworld_ores set value {\
    num_block_types: 9, \
    message_lines: [\
        [{text: " "}, {translate: "block.minecraft.coal_ore"}], \
        [{text: " "}, {translate: "block.minecraft.copper_ore"}], \
        [{text: " "}, {translate: "block.minecraft.iron_ore"}], \
        [{text: " "}, {translate: "block.minecraft.lapis_ore"}], \
        [{text: " "}, {translate: "block.minecraft.redstone_ore"}], \
        [{text: " "}, {translate: "block.minecraft.gold_ore"}], \
        [{text: " "}, {translate: "block.minecraft.diamond_ore"}], \
        [{text: " "}, {translate: "block.minecraft.emerald_ore"}], \
        [{text: " "}, {translate: "block.minecraft.amethyst_cluster"}], \
    ], \
}
# 下界矿石(下界石英矿石、下界金矿石、镶金黑石、远古残骸和荧石)
data modify storage chain_mining:data data.supported_blocks.nether_ores set value {\
    num_block_types: 5, \
    message_lines: [\
        [{text: " "}, {translate: "block.minecraft.nether_quartz_ore"}], \
        [{text: " "}, {translate: "block.minecraft.nether_gold_ore"}], \
        [{text: " "}, {translate: "block.minecraft.gilded_blackstone"}], \
        [{text: " "}, {translate: "block.minecraft.ancient_debris"}], \
        [{text: " "}, {translate: "block.minecraft.glowstone"}], \
    ], \
}
# 原木/菌柄(橡木原木、云杉原木、白桦原木、丛林原木、金合欢原木、深色橡木原木、红树原木、红树根、樱花原木、苍白橡木原木、绯红菌柄和诡异菌柄)
data modify storage chain_mining:data data.supported_blocks.logs set value {\
    num_block_types: 12, \
    message_lines: [\
        [{text: " "}, {translate: "block.minecraft.oak_log"}], \
        [{text: " "}, {translate: "block.minecraft.spruce_log"}], \
        [{text: " "}, {translate: "block.minecraft.birch_log"}], \
        [{text: " "}, {translate: "block.minecraft.jungle_log"}], \
        [{text: " "}, {translate: "block.minecraft.acacia_log"}], \
        [{text: " "}, {translate: "block.minecraft.dark_oak_log"}], \
        [{text: " "}, {translate: "block.minecraft.mangrove_log"}], \
        [{text: " "}, {translate: "block.minecraft.mangrove_roots"}], \
        [{text: " "}, {translate: "block.minecraft.cherry_log"}], \
        [{text: " "}, {translate: "block.minecraft.pale_oak_log"}], \
        [{text: " "}, {translate: "block.minecraft.crimson_stem"}], \
        [{text: " "}, {translate: "block.minecraft.warped_stem"}], \
    ], \
}
# 岩石(安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块)
data modify storage chain_mining:data data.supported_blocks.rocks set value {\
    num_block_types: 7, \
    message_lines: [\
        [{text: " "}, {translate: "block.minecraft.andesite"}], \
        [{text: " "}, {translate: "block.minecraft.diorite"}], \
        [{text: " "}, {translate: "block.minecraft.granite"}], \
        [{text: " "}, {translate: "block.minecraft.tuff"}], \
        [{text: " "}, {translate: "block.minecraft.calcite"}], \
        [{text: " "}, {translate: "block.minecraft.amethyst_block"}], \
        [{text: " "}, {translate: "block.minecraft.magma_block"}], \
    ], \
}
# 软作物(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甜浆果丛、火把花、瓶子草植株、甘蔗、洞穴藤蔓和树脂团)
data modify storage chain_mining:data data.supported_blocks.soft_crops set value {\
    num_block_types: 11, \
    message_lines: [\
        [{text: " "}, {translate: "block.minecraft.wheat"}], \
        [{text: " "}, {translate: "block.minecraft.carrots"}], \
        [{text: " "}, {translate: "block.minecraft.potatoes"}], \
        [{text: " "}, {translate: "block.minecraft.beetroots"}], \
        [{text: " "}, {translate: "block.minecraft.nether_wart"}], \
        [{text: " "}, {translate: "block.minecraft.sweet_berry_bush"}], \
        [{text: " "}, {translate: "block.minecraft.torchflower"}], \
        [{text: " "}, {translate: "block.minecraft.pitcher_crop"}], \
        [{text: " "}, {translate: "block.minecraft.sugar_cane"}], \
        [{text: " "}, {translate: "block.minecraft.cave_vines"}], \
        [{text: " "}, {translate: "block.minecraft.resin_clump"}], \
    ], \
}
# 硬作物(南瓜、雕刻南瓜、西瓜、可可果、仙人掌和竹子)
data modify storage chain_mining:data data.supported_blocks.hard_crops set value {\
    num_block_types: 6, \
    message_lines: [\
        [{text: " "}, {translate: "block.minecraft.pumpkin"}], \
        [{text: " "}, {translate: "block.minecraft.carved_pumpkin"}], \
        [{text: " "}, {translate: "block.minecraft.melon"}], \
        [{text: " "}, {translate: "block.minecraft.cocoa"}], \
        [{text: " "}, {translate: "block.minecraft.cactus"}], \
        [{text: " "}, {translate: "block.minecraft.bamboo"}], \
    ], \
}
