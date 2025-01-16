tag @s remove helic
tag @s remove dead
scoreboard players reset @s deathCount  
tp @s[team=setout] -151 109 177

# 前置，清空玩家效果和背包
tag @s[team=setout] add gaming
team join playing @s[tag=gaming]
execute as @s[tag=gaming] run effect clear @s
execute as @s[tag=gaming] run clear @s

# 个人难度设定
execute as @s[tag=gaming] unless score @s personal_difficulty matches 0..4 run scoreboard players set @s personal_difficulty 2
execute as @s[tag=gaming,scores={personal_difficulty=0}] run function re_test:difficulty/set_0
execute as @s[tag=gaming,scores={personal_difficulty=1}] run function re_test:difficulty/set_1
execute as @s[tag=gaming,scores={personal_difficulty=2}] run function re_test:difficulty/set_2
execute as @s[tag=gaming,scores={personal_difficulty=3}] run function re_test:difficulty/set_3
execute as @s[tag=gaming,scores={personal_difficulty=4}] run function re_test:difficulty/set_4
execute as @s[tag=gaming] run function re_test:difficulty/difficulty_output

# 开局回血以及掉饥饿
effect give @s[tag=gaming] minecraft:instant_health 9 9 true
effect give @s[tag=gaming] minecraft:hunger 3 100 true

# 彩蛋time
give @s[tag=gaming,tag=knockback_stick] minecraft:blaze_rod{Enchantments:[{id:"minecraft:knockback",lvl:3}]}
