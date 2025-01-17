execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~

tellraw @s [{"text":""},{"text":"\n"},{"text":"[当前版本]","bold":true,"color":"green"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"版本号: ","color":"yellow"},{"text":"v1.8","color":"green"},{"text":"\n"},{"text":"[更新内容]","bold":true,"color":"aqua"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"把载具纳入reset中","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"添加更多医药箱","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"更换难度更换至自定义难度风格","color":"yellow"}]