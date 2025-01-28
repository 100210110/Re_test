# 运行此函数，结束投票阶段并结算
# 根据分数执行，若有需要循环检测的部分，在every_tick的fun_time的main函数里注册
execute if score run_item vote.item matches 114514 run function re_test:fun_time/ending_fun_time
execute if score run_item vote.item matches 1 run function re_test:fun_time/item/1
execute if score run_item vote.item matches 2 run function re_test:fun_time/item/2
execute if score run_item vote.item matches 3 run function re_test:fun_time/item/3
execute if score run_item vote.item matches 4 run function re_test:fun_time/item/4
execute if score run_item vote.item matches 5 run function re_test:fun_time/item/5
execute if score run_item vote.item matches 6 run function re_test:fun_time/item/6
execute if score run_item vote.item matches 7 run function re_test:fun_time/item/7
execute if score run_item vote.item matches 8 run function re_test:fun_time/item/8
execute if score run_item vote.item matches 9 run function re_test:fun_time/item/9

# 开始倒计时，倒计时结束停止fun_time
function re_test:math/update_fun_time_sec
scoreboard players operation fun_time_countdown time = fun_time_sec time
function re_test:every_tick/fun_time/count_down
# 触发循环检测，如果有需要的惩罚会执行，普通惩罚直接结束
function re_test:every_tick/fun_time/main

tag @a remove most_votes
tag @a remove get_vote
scoreboard players set @a[team=lobby] vote.item 0
