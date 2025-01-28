# 运行此函数，结束投票阶段并结算
# vote.item vote.times
# 若中途停止也需要重置
scoreboard players set test_vote mode 0

# 每人加一分，得到分数
execute as @a[scores={vote.item=114514}] run scoreboard players add @a[scores={vote.item=114514}] vote.times 1
execute as @a[scores={vote.item=1}] run scoreboard players add @a[scores={vote.item=1}] vote.times 1
execute as @a[scores={vote.item=2}] run scoreboard players add @a[scores={vote.item=2}] vote.times 1
execute as @a[scores={vote.item=3}] run scoreboard players add @a[scores={vote.item=3}] vote.times 1
execute as @a[scores={vote.item=4}] run scoreboard players add @a[scores={vote.item=4}] vote.times 1
execute as @a[scores={vote.item=5}] run scoreboard players add @a[scores={vote.item=5}] vote.times 1
execute as @a[scores={vote.item=6}] run scoreboard players add @a[scores={vote.item=6}] vote.times 1
execute as @a[scores={vote.item=7}] run scoreboard players add @a[scores={vote.item=7}] vote.times 1
execute as @a[scores={vote.item=8}] run scoreboard players add @a[scores={vote.item=8}] vote.times 1
execute as @a[scores={vote.item=9}] run scoreboard players add @a[scores={vote.item=9}] vote.times 1
# 将max随机赋值一个玩家，防止出现max初始值过大
scoreboard players operation max vote.times = @r[scores={vote.item=1..}] vote.times
execute as @a[scores={vote.item=0..}] run scoreboard players operation max vote.times > @s vote.times
execute as @a[scores={vote.item=0..}] if score @s vote.times = max vote.times run tag @s add most_votes
execute as @r[tag=most_votes] run scoreboard players operation run_item vote.item = @s vote.item
# 执行结束后清除tag和分数，执行项为 run_item vote.item，票数为max vote.times
tag @a remove most_votes
tag @a remove get_vote
# 结束后清除投票的追踪标签
tag @a remove voting

# 根据分数执行，若有需要循环检测的部分，在every_tick的fun_time的main函数里注册
execute if score run_item vote.item matches 114514 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"饶你一命","bold":true,"color":"yellow"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 你们之间的爱问心无愧","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 1 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"豆腐渣地板","bold":true,"color":"#B3FFFF"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 2 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"钓鱼游戏","bold":true,"color":"#8686FE"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 3 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"水族馆","bold":true,"color":"#F8E068"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 4 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"自由落体","bold":true,"color":"#B3FFFF"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 5 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"渡劫","bold":true,"color":"aqua"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 6 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"互喂毒药","bold":true,"color":"gray"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 7 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"推推乐","bold":true,"color":"green"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 8 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"生化危机","bold":true,"color":"#A33E3E"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]
execute if score run_item vote.item matches 9 run tellraw @a [{"text":""},{"text":"[结果出炉]","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":">>> ","bold":true,"color":"yellow"},{"text":"得票最高项为：","bold":true,"color":"yellow"},{"text":"摸摸头","bold":true,"color":"gold"},{"text":"  - ","color":"green"},{"text":"票数：","bold":true,"color":"yellow"},{"score":{"name":"max","objective":"vote.times"},"bold":true,"color":"green"},{"text":"\n"},{"text":"\n"},{"text":">>> 三秒后执行","bold":true,"color":"yellow"}]


execute unless score run_item vote.item matches 114514 run scoreboard players set fun_time_start time 3
execute unless score run_item vote.item matches 114514 run function re_test:fun_time/fun_time_countdown
# execute unless score run_item vote.item matches 114514 run schedule function re_test:fun_time/vote/run_fun_time 3s append
execute if score run_item vote.item matches 114514 run function re_test:fun_time/ending_fun_time

# 保险，清除所有人投票权限
scoreboard players reset @a vote.item