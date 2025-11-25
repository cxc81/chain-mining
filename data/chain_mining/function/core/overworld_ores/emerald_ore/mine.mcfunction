execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

function chain_mining:core/generic/mainhand/destroy_block
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. summon minecraft:experience_orb run function chain_mining:core/overworld_ores/emerald_ore/exp_orb
function chain_mining:core/generic/tp_items_and_orbs
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/normal {blocks: "#minecraft:emerald_ores", mine_function: "overworld_ores/emerald_ore/mine"}
