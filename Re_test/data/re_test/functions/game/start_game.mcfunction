tag @a remove helic
tag @a remove dead
scoreboard players reset @a deathCount
difficulty hard
scoreboard players set game_start mode 1
time set night
# 游戏时间开始计时，用于统计和结算的积分
function re_test:time/game_run_time/main
# 游戏开始，切换至第一任务
function re_test:task_score/task_1

# 前置，清空玩家效果和背包，游戏开始后禁用已加入游戏玩家的点击传送
tag @a[team=setout] add gaming
team join playing @a[tag=gaming]
execute as @a[tag=gaming] run effect clear @s
execute as @a[tag=gaming] run clear @s
scoreboard players reset @a[tag=gaming] t_setout
# wow, 氛围音效
execute as @s[tag=gaming] at @s run playsound zombie_extreme:biome_wind_sound_radiation voice @s ~ ~ ~

# 个人难度设定
execute as @a[tag=gaming] unless score @s personal_difficulty matches 0..4 run scoreboard players set @s personal_difficulty 2
execute as @a[tag=gaming,scores={personal_difficulty=0}] run function re_test:difficulty/set_0
execute as @a[tag=gaming,scores={personal_difficulty=1}] run function re_test:difficulty/set_1
execute as @a[tag=gaming,scores={personal_difficulty=2}] run function re_test:difficulty/set_2
execute as @a[tag=gaming,scores={personal_difficulty=3}] run function re_test:difficulty/set_3
execute as @a[tag=gaming,scores={personal_difficulty=4}] run function re_test:difficulty/set_4
execute as @a[tag=gaming] run function re_test:difficulty/difficulty_output

# 开局回血以及掉饥饿
effect give @a[tag=gaming] minecraft:instant_health 9 9 true
effect give @a[tag=gaming] minecraft:hunger 3 100 true

# 开局安全时间
execute if score safe_time mode matches ..0 run scoreboard players set safe_time mode 0
execute store result score safe_time time run scoreboard players get safe_time mode
# 刷新枪械箱
schedule function re_test:reset_box/guns_box 3s append
# 刷新物资箱
schedule function re_test:reset_box/item_box 3s append
# 刷新药品箱
schedule function re_test:reset_box/medical_box 3s append
# 村长家发光引导
setblock -214 114 50 minecraft:cherry_button[face=floor,facing=east,powered=false]
summon minecraft:block_display -214.0 113 50.0 {block_state:{Name:"minecraft:emerald_block"},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["villager"]}
summon minecraft:block_display -214.0 114 50.0 {block_state:{Name:"minecraft:cherry_button",Properties:{face:floor,facing:east}},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["villager_button"]}

# 一切就绪后，实体命令方块游戏逻辑开始运行
scoreboard players set copter mode 0
function re_test:every_tick/in_gaming/main

# 彩蛋time
give @a[tag=gaming,tag=knockback_stick] minecraft:blaze_rod{Enchantments:[{id:"minecraft:knockback",lvl:3}]}
