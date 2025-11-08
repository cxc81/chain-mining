# @since 1.21.6

data modify storage chain_mining:data data.changelog_lines set value []
function chain_mining:dialog/changelog/patch_lines

function chain_mining:dialog/changelog/macro_call with storage chain_mining:data data
