# 定义所有拥有最大耐久度的物品的默认值，以便查询不到max_damage组件时快速获取

# 金质工具
data modify storage chain_mining:data data.default_max_damage set value {\
    "minecraft:golden_axe": 32, \
    "minecraft:golden_hoe": 32, \
    "minecraft:golden_pickaxe": 32, \
    "minecraft:golden_shovel": 32, \
    "minecraft:golden_sword": 32, \
    "minecraft:golden_spear": 32, \
}
# 木质工具
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:wooden_axe": 59, \
    "minecraft:wooden_hoe": 59, \
    "minecraft:wooden_pickaxe": 59, \
    "minecraft:wooden_shovel": 59, \
    "minecraft:wooden_sword": 59, \
    "minecraft:wooden_spear": 59, \
}
# 石质工具
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:stone_axe": 131, \
    "minecraft:stone_hoe": 131, \
    "minecraft:stone_pickaxe": 131, \
    "minecraft:stone_shovel": 131, \
    "minecraft:stone_sword": 131, \
    "minecraft:stone_spear": 131, \
}
# 铜质工具
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:copper_axe": 190, \
    "minecraft:copper_hoe": 190, \
    "minecraft:copper_pickaxe": 190, \
    "minecraft:copper_shovel": 190, \
    "minecraft:copper_sword": 190, \
    "minecraft:copper_spear": 190, \
}
# 铁质工具
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:iron_axe": 250, \
    "minecraft:iron_hoe": 250, \
    "minecraft:iron_pickaxe": 250, \
    "minecraft:iron_shovel": 250, \
    "minecraft:iron_sword": 250, \
    "minecraft:iron_spear": 250, \
}
# 钻石质工具
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:diamond_axe": 1561, \
    "minecraft:diamond_hoe": 1561, \
    "minecraft:diamond_pickaxe": 1561, \
    "minecraft:diamond_shovel": 1561, \
    "minecraft:diamond_sword": 1561, \
    "minecraft:diamond_spear": 1561, \
}
# 下界合金质工具
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:netherite_axe": 2031, \
    "minecraft:netherite_hoe": 2031, \
    "minecraft:netherite_pickaxe": 2031, \
    "minecraft:netherite_shovel": 2031, \
    "minecraft:netherite_sword": 2031, \
    "minecraft:netherite_spear": 2031, \
}
# 其余挖掘工具
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:shears": 238, \
    "minecraft:trident": 250, \
    "minecraft:mace": 500, \
}
# 盔甲
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:turtle_helmet": 275, \
    "minecraft:wolf_armor": 64, \
    "minecraft:leather_helmet": 55, \
    "minecraft:leather_chestplate": 80, \
    "minecraft:leather_leggings": 75, \
    "minecraft:leather_boots": 65, \
    "minecraft:golden_helmet": 77, \
    "minecraft:golden_chestplate": 112, \
    "minecraft:golden_leggings": 105, \
    "minecraft:golden_boots": 91, \
    "minecraft:copper_helmet": 121, \
    "minecraft:copper_chestplate": 176, \
    "minecraft:copper_leggings": 165, \
    "minecraft:copper_boots": 143, \
    "minecraft:chainmail_helmet": 165, \
    "minecraft:chainmail_chestplate": 240, \
    "minecraft:chainmail_leggings": 225, \
    "minecraft:chainmail_boots": 195, \
    "minecraft:iron_helmet": 165, \
    "minecraft:iron_chestplate": 240, \
    "minecraft:iron_leggings": 225, \
    "minecraft:iron_boots": 195, \
    "minecraft:diamond_helmet": 363, \
    "minecraft:diamond_chestplate": 528, \
    "minecraft:diamond_leggings": 495, \
    "minecraft:diamond_boots": 429, \
    "minecraft:netherite_helmet": 407, \
    "minecraft:netherite_chestplate": 592, \
    "minecraft:netherite_leggings": 555, \
    "minecraft:netherite_boots": 481, \
}
# 其他具有耐久度的物品
data modify storage chain_mining:data data.default_max_damage merge value {\
    "minecraft:flint_and_steel": 64, \
    "minecraft:fishing_rod": 64, \
    "minecraft:carrot_on_a_stick": 25, \
    "minecraft:warped_fungus_on_a_stick": 100, \
    "minecraft:bow": 384, \
    "minecraft:shield": 336, \
    "minecraft:crossbow": 465, \
    "minecraft:elytra": 432, \
    "minecraft:brush": 64, \
}
