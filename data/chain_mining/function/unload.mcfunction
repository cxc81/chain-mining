function chain_mining:util/remove_scoreboards

# Remove all stored data
data remove storage chain_mining:data data
data remove storage chain_mining:data function_call
data remove storage chain_mining:data items

execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
function chain_mining:tellraw/unload_success
schedule clear chain_mining:tick
