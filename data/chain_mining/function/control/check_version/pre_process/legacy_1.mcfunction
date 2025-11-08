# 如果在mine:data命令存储中发现了lastDataVersion，则读取它，复制到chain_mining:data的data.last_data_version
execute if data storage mine:data lastDataVersion run \
    data modify storage chain_mining:data data.last_data_version set from storage mine:data lastDataVersion
