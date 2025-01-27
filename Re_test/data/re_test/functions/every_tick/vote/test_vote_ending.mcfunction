# 执行此函数，循环检测是否所有人投票，如是，则结束投票

execute unless entity @a[tag=voting,scores={vote.item=0}] run scoreboard players set test_vote mode 0
execute unless entity @a[tag=voting,scores={vote.item=0}] run function re_test:fun_time/vote/ending_vote


execute if score test_vote mode matches 1 run schedule function re_test:every_tick/vote/test_vote_ending 1t append