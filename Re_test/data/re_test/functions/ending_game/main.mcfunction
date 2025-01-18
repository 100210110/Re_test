# 主函数，游戏结束后触发
# 游戏结算方案
# - 游戏结束后，存活与阵亡玩家的传送，关门
# - 阵亡玩家惩罚：河豚、地板消失、加水、地板着火、钓人、刷僵尸、摸头
# - 河豚：灌一层水 放5只河豚
# - 地板消失：地板消失
# - 全灌满水
# - 地板着火
# - 鱼竿钓人
# - 刷僵尸
# - 摸头
# - 阵亡惩罚计时30s，结束后地图恢复正常

gamemode adventure @a[tag=gaming]

time set day
difficulty peaceful
scoreboard players set game_start mode 0
scoreboard players reset copter time
bossbar remove minecraft:copter_time

# 刷新已加载锚点显隐状态，不改变，仅刷新
function re_test:show_arm/refresh_status

# 清除发光引导
kill @e[type=minecraft:block_display,tag=villager]
kill @e[type=minecraft:block_display,tag=villager_button]
kill @e[type=minecraft:block_display,tag=copter]
kill @e[type=minecraft:block_display,tag=copter_button]

# 中断两段BGM
stopsound @a * playerrevive:tension
stopsound @a * playerrevive:hightension

# 恢复玩家属性
effect clear @a[tag=gaming]
execute as @a[tag=gaming] run attribute @s minecraft:generic.max_health base set 20
execute as @a[tag=gaming] run attribute @s minecraft:generic.movement_speed base set 0.12

# 重置背包、僵尸锚点、删除机动车
clear @a[tag=gaming]
tag @e[tag=zomb_check_mark] remove run
tag @e[tag=zomb_check_mark] remove cd
scoreboard players reset @e[tag=zomb_check_mark] cool_down
kill @e[type=minecraft:item]
function re_test:game/reset_car/kill

# 停止计时后进行结算函数，左下角显示结算信息
schedule clear re_test:time/game_run_time/count_down
function re_test:ending_game/score_settlement

# 重置直升机触发条件
scoreboard players set copter mode 0

# 阵亡的加入此队伍进监狱，未阵亡回大厅
team join dead_player @a[tag=dead]
tp @a[team=dead_player] 207 305 105 180 0
execute as @a[tag=!dead,tag=gaming] run function re_test:team/leave_teaching

# 清理所有tag、team、score
scoreboard objectives remove kill
scoreboard objectives add kill totalKillCount {"text":"击杀数","color":"red"}
scoreboard objectives setdisplay sidebar.team.blue kill
tag @a remove helic
tag @a remove dead
tag @a remove gaming
team empty playing

