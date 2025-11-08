# @since 1.21.6

execute unless data storage chain_mining:data function_call.changelog_lines[0] run return 1

data modify storage chain_mining:data function_call.changelog_lines[0] append value {text: "\n"}
data modify storage chain_mining:data data.changelog_lines_patched append from storage chain_mining:data function_call.changelog_lines[0]
data remove storage chain_mining:data function_call.changelog_lines[0]

function chain_mining:dialog/changelog/patch_lines_recur
