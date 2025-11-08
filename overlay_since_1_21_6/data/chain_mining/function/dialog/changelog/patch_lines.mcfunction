# @since 1.21.6
# 在changelog_lines的基础上，为每一行文本后面添加\n

data modify storage chain_mining:data function_call.changelog_lines set from storage chain_mining:data data.changelog_lines
data modify storage chain_mining:data data.changelog_lines_patched set value []

function chain_mining:dialog/changelog/patch_lines_recur
