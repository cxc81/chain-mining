loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:nether_quartz_ore ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.nether_ore.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air
execute if score dimension mine matches 0 unless data block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] run summon minecraft:experience_orb ~ ~ ~ {Value:3s,Count:1}
execute if score dimension mine matches -1 unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] run summon minecraft:experience_orb ~ ~ ~ {Value:3s,Count:1}
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:ores/nether_quartz_ore/find