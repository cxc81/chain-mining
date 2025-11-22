loot spawn ~ ~0.1 ~0.65 loot chain_mining:carve/pumpkin
execute positioned ~ ~ ~1 align xyz as @e[type=minecraft:item,tag=!chain_mining_detected,dx=0,dy=0,dz=0] run data merge entity @s {PickupDelay: 0s}
setblock ~ ~ ~ minecraft:carved_pumpkin[facing=south]
execute positioned ~ ~ ~1 run function chain_mining:core/generic/tp_items
