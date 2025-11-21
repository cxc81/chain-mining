# Before 1.21.9, it has a fixed drop - 4 pumpkin seeds
# Since 1.21.9, it uses the minecraft:carve/pumpkin loot table
execute if score #carved_pumpkin_facing chain_mining_variables matches 0 align xyz run loot spawn ~ ~0.1 ~-0.65 loot chain_mining:carve/pumpkin
execute if score #carved_pumpkin_facing chain_mining_variables matches 1 align xyz run loot spawn ~0.65 ~0.1 ~ loot chain_mining:carve/pumpkin
execute if score #carved_pumpkin_facing chain_mining_variables matches 2 align xyz run loot spawn ~ ~0.1 ~0.65 loot chain_mining:carve/pumpkin
execute if score #carved_pumpkin_facing chain_mining_variables matches 3 align xyz run loot spawn ~-0.65 ~0.1 ~ loot chain_mining:carve/pumpkin
execute align xyz as @e[type=minecraft:item,tag=!chain_mining_detected,dx=0,dy=0,dz=0] run data merge entity @s {PickupDelay: 0s}
