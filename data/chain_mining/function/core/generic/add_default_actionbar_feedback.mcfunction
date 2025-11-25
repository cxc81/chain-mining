# @arguments
#   name_key
execute if score num_blocks_mined chain_mining_variables matches ..0 run return fail
$data modify storage chain_mining:data function_call.actionbar append value {translate: "chain_mining.message.actionbar.blocks", fallback: "%s个%s", with: [{score: {name: "num_blocks_mined", objective: "chain_mining_variables"}, color: "yellow"}, {translate: "$(name_key)"}]}
