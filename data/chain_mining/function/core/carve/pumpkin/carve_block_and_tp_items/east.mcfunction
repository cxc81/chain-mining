loot spawn ~0.65 ~0.1 ~ loot chain_mining:carve/pumpkin
execute positioned ~1 ~ ~ align xyz as @e[type=minecraft:item,tag=!chain_mining_detected,dx=0,dy=0,dz=0] run data merge entity @s {PickupDelay: 0s}
setblock ~1 ~ ~ minecraft:carved_pumpkin[facing=east]
execute positioned ~1 ~ ~ run function chain_mining:core/generic/tp_items
