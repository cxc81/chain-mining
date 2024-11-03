# Arguments:
#   score_holder, name_key
$execute if score $(score_holder) chain_mining_variables matches ..0 run return fail
$data modify storage chain_mining:data function_call.actionbar append value {translate: "chain_mining.actionbar.one_type", fallback: "%s个%s", with: [{score: {name: "$(score_holder)", objective: "chain_mining_variables"}, color: "yellow"}, {translate: "$(name_key)"}]}
