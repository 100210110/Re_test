# 计数减一后通知时间，一秒后重播
scoreboard players remove start_countdown time 1
execute if score start_countdown time matches 6..10 run title @a actionbar [{"text":""},{"text":"距离游戏开始还有：","bold":true,"color":"yellow"},{"score":{"name":"start_countdown","objective":"time"},"bold":true,"color":"green"},{"text":" 秒","bold":true,"color":"yellow"}]
execute if score start_countdown time matches 4..5 run title @a actionbar [{"text":""},{"text":"距离游戏开始还有：","bold":true,"color":"yellow"},{"score":{"name":"start_countdown","objective":"time"},"bold":true,"color":"yellow"},{"text":" 秒","bold":true,"color":"yellow"}]
execute if score start_countdown time matches 1..3 run title @a actionbar [{"text":""},{"text":"距离游戏开始还有：","bold":true,"color":"yellow"},{"score":{"name":"start_countdown","objective":"time"},"bold":true,"color":"red"},{"text":" 秒","bold":true,"color":"yellow"}]
# 重播
execute if score start_countdown time matches 1.. run schedule function re_test:before_game/start_countdown 1s append
execute if score start_countdown time matches 1.. as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1 1
execute if score start_countdown time matches 1 run tp @a[team=setout] -151 109 177
execute if score start_countdown time matches 1 run schedule function re_test:game/reset_game 10t append

# 为 0 时开始
execute if score start_countdown time matches 0 run title @a actionbar {"text":"游戏开始! ","bold":true,"color":"aqua"}
execute if score start_countdown time matches 0 as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 2 1
execute if score start_countdown time matches 0 run function re_test:game/start_game