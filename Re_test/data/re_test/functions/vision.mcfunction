execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~

tellraw @s [{"text":""},{"text":"\n"},{"text":"[当前版本]","bold":true,"color":"green"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"版本号: ","color":"yellow"},{"text":"v2.1","color":"green"},{"text":"\n"},{"text":"[更新内容]","bold":true,"color":"aqua"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"投票改为追踪标签, 现在投票中可切换队伍","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"展示投票项改为函数, 方便再次展示","color":"yellow"}]
