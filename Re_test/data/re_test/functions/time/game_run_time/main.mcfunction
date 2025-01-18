# 执行此函数后，开始累计游戏运行时间
scoreboard players set game_run_time time 0
execute if score game_start mode matches 1 run function re_test:time/game_run_time/count_down
