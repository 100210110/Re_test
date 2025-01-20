execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~

tellraw @s [{"text":""},{"text":"\n"},{"text":"[当前版本]","bold":true,"color":"green"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"版本号: ","color":"yellow"},{"text":"v2.0.1","color":"green"},{"text":"\n"},{"text":"[更新内容]","bold":true,"color":"aqua"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"增加准备后无人进入游戏的处理","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"击杀数计分板更改为任务面板","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"添加任务面板初始化函数","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"添加切换任务中函数","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"添加任务结束划线函数","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"修复很多bug","color":"yellow"}]