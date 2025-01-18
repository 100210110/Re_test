# 执行此函数后，开始累计游戏运行时间
scoreboard players add game_run_time time 1
execute if score game_start mode matches 1 run schedule function re_test:time/game_run_time/count_down 1s append