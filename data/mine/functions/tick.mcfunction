# 1. ִ��/gamerule doTileDrops���жϴ������Ƿ��з��������
execute store result score gamerule_do_tile_drops mine run gamerule doTileDrops
execute if score gamerule_do_tile_drops mine matches 1 as @a run function mine:control/mine_main

# 2. ���ݰ����سɹ�����Ϣ����
execute as @a unless score @s mine_enter = @s mine_enter run function mine:control/datapack_loaded_success
scoreboard players set @a mine_enter 0

# 3. �������ǵ�һ�ν�������磬Ҫ�����ø���ֵ
execute as @a unless score @s mine_setting_ores = @s mine_setting_ores run function mine:control/player_first_enter

# 4. ��Ӧ��ҵĵ���¼�(ʹ������/trigger)
function mine:control/respond_trigger