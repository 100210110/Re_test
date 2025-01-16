scoreboard players set start_countdown time 0
schedule clear re_test:before_game/start_countdown
title @a actionbar {"text":"游戏启动中断","bold":true,"color":"red"}
tellraw @a [{"text":""},{"text":">>> ","bold":true,"color":"yellow"},{"text":"游戏启动中断 ","bold":true,"color":"red"}]
playsound minecraft:block.note_block.didgeridoo voice @a ~ ~ ~