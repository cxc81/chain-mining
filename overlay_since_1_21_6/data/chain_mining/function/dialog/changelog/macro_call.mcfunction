# @since 1.21.6
# @arguments
#   changelog_lines_patched - 在changelog_lines的基础上，每一行文本后面添加了\n

$dialog show @s {type: "minecraft:multi_action", title: [{text: "", color: "gold"}, {translate: "chain_mining.dialog.data_pack.title", fallback: "连锁采集数据包", bold: true}, " - ", {translate: "chain_mining.dialog.changelog.title", fallback: "更新日志"}], body: [{type: "minecraft:plain_message", contents: $(changelog_lines_patched), width: 400}], columns: 1, actions: [{label: {translate: "chain_mining.dialog.button.settings", fallback: "设置"}, action: {type: "minecraft:run_command", command: "trigger chain_mining_trigger set 1"}}, {label: {translate: "chain_mining.dialog.button.instructions", fallback: "使用说明"}, action: {type: "minecraft:run_command", command: "trigger chain_mining_trigger set 2"}}], exit_action: {label: {translate: "gui.back"}}}
