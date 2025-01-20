# 取代触发的循环命令方块
execute if score game_start mode matches 1 run schedule function re_test:every_tick/in_gaming/main 1t append

# 检测玩家到达直升机
function re_test:every_tick/in_gaming/test_for_heilc
# 检测玩家死亡并处理
function re_test:every_tick/in_gaming/test_for_dead
# 检测玩家状态，判断是否结束游戏。  如果游玩中没有存活且没上飞机的玩家，则游戏结束
execute if score game_start mode matches 1 unless entity @a[tag=!dead,tag=gaming,tag=!helic] run schedule clear re_test:every_tick/in_gaming/main
execute if score game_start mode matches 1 unless entity @a[tag=!dead,tag=gaming,tag=!helic] run function re_test:every_tick/in_gaming/test_for_ending
execute if score copter time matches 1.. if score copter mode matches 0 run function re_test:game/copter_sum
execute if score copter time matches 1.. run function re_test:game/copter_time