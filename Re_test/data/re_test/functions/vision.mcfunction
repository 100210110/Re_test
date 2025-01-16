execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~
tellraw @s [{"text":""},{"text":"\n"},{"text":"[当前版本]","bold":true,"color":"green"},{"text":"\n"},{"text":"　　　　"},{"text":"版本号: ","color":"yellow"},{"text":"v1.7","color":"green"},{"text":"\n"},{"text":"[更新内容]","bold":true,"color":"aqua"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"添加每tick执行的函数集","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"呼叫直升机后添加几波次的僵尸","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"添加难度的风格切换","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"结束后触发reset_game更改为ending_game","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"优化几处传送朝向","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"现在游戏结束会切回白天","color":"yellow"}]