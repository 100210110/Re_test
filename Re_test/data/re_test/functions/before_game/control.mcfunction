# 没有倒计时且游戏未开始， 启动倒计时。如果不是本次命令启动，则中断倒计时
execute unless score start_countdown time matches 1.. if score game_start mode matches 0 if entity @a[team=setout] run scoreboard players set start_countdown time 11
execute unless score start_countdown time matches 11 if score game_start mode matches 0 if entity @a[team=setout] run function re_test:before_game/stop_start_countdown

# 所有人都准备则缩短开始游戏时间，不然还是10s
execute if score start_countdown time matches 11 unless entity @a[team=!setout] run scoreboard players set start_countdown time 4
execute if score start_countdown time matches 11 run scoreboard players enable @a[team=!setout] t_setout
execute if score start_countdown time matches 11 run tellraw @a[team=!setout] [{"text":""},{"text":">>> ","bold":true,"color":"yellow"},{"text":"游戏准备开始 ","bold":true,"color":"aqua"},{"text":">点击返回大厅并准备<","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function re_test:before_game/t_trigger"},"hoverEvent":{"action":"show_text","contents":[{"text":"点击返回大厅准备","color":"yellow"}]}}]
execute if score start_countdown time matches 11 run function re_test:before_game/start_countdown
execute if score start_countdown time matches 4 unless entity @a[team=!setout] as @a run tellraw @s [{"text":""},{"text":">>> ","bold":true,"color":"yellow"},{"text":"所有玩家已准备，倒计时缩短为","bold":true,"color":"green"},{"text":" 3 ","bold":true,"color":"aqua"},{"text":"秒","bold":true,"color":"green"}]
execute if score start_countdown time matches 4 run function re_test:before_game/start_countdown

# 无人准备不让按
execute unless entity @a[team=setout] run tellraw @s {"text":"没人准备都, 僵尸茶话会吗","bold":true,"color":"red"}
execute unless entity @a[team=setout] at @s run playsound minecraft:block.note_block.didgeridoo voice @s ~ ~ ~ 1 1 1

# 游戏已启动不让按
execute if score game_start mode matches 1 run tellraw @s {"text":"游戏启动了还按，炸了咱不管啊","bold":true,"color":"red"}
execute if score game_start mode matches 1 at @s run playsound minecraft:block.note_block.didgeridoo voice @s ~ ~ ~ 1 1 1