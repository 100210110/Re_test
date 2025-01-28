# 运行此函数将会根据分数，决定触发的循环检测器
scoreboard players operation fun_time time = fun_time mode

execute if score run_item vote.item matches 5 run function re_test:every_tick/fun_time/5