# Before 1.21.9, it has a fixed drop - 4 pumpkin seeds
# Since 1.21.9, it uses the minecraft:carve/pumpkin loot table
loot spawn ~ ~ ~ loot chain_mining:carve/pumpkin
execute align xyz as @e[type=minecraft:item,tag=!chain_mining_detected,dx=0,dy=0,dz=0] run data merge entity @s {PickupDelay: 0s}
