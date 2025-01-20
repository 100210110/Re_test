execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~

tellraw @s [{"text":""},{"text":"\n"},{"text":"[当前版本]","bold":true,"color":"green"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"版本号: ","color":"yellow"},{"text":"v2.0","color":"green"},{"text":"\n"},{"text":"[更新内容]","bold":true,"color":"aqua"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"死亡玩家额外播报存活时间","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"实体命令方块逻辑迁移到数据包","color":"yellow"}]
tellraw @s [{"text":""},{"text":"　　　　"},{"text":"- ","color":"green"},{"text":"修复因以时分秒格式显示引起的一万个bug","color":"yellow"}]