# 运行此函数，发送投票选项并锁门，应当检测同时有存活和死亡玩家后再执行此函数
execute at @a run playsound minecraft:block.note_block.bell voice @s ~ ~ ~
tag @a[team=lobby] add voting

scoreboard players set @a[tag=voting] vote.item 0
scoreboard players set @a[tag=voting] vote.times 0
scoreboard players enable @a[tag=voting] vote.item
scoreboard players set run_item vote.item 0
tellraw @a[team=dead_player] {"text":"[队友正在选择爱你的方式]","bold":true,"color":"gold"}
execute as @a[tag=voting] run function re_test:fun_time/vote/view_all_vote_items
# 投票时锁门
function re_test:fun_time/item/lock
