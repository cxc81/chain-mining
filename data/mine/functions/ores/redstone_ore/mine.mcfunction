loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:redstone_ore run particle minecraft:block minecraft:redstone_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:deepslate_redstone_ore run particle minecraft:block minecraft:deepslate_redstone_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:redstone_ore run playsound minecraft:block.stone.break block @a
execute if block ~ ~ ~ minecraft:deepslate_redstone_ore run playsound minecraft:block.deepslate.break block @a
setblock ~ ~ ~ minecraft:air
execute unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] run summon minecraft:experience_orb ~ ~ ~ {Value:3s,Count:1}
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:ores/redstone_ore/find