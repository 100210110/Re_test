# 检测没有未上飞机且存活的玩家后，执行如下函数
execute as @a[tag=gaming,tag=helic] run title @s title [{"text":"你安全了，暂时","color":"blue"}]
execute as @a[tag=gaming,tag=helic] run title @s subtitle [{"text":"逃脱了, 牛b","color":"gold"}]
execute as @a[tag=gaming,tag=dead] run title @s title [{"text":"游戏结束","color":"blue"}]
execute as @a[tag=gaming,tag=dead] run title @s subtitle [{"text":"地板凉，不能在这睡","color":"gold"}]
schedule function re_test:ending_game/main 5t append