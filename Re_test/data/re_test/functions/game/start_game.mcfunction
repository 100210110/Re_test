tag @a remove helic
tag @a remove dead
scoreboard players reset @a deathCount
difficulty hard
scoreboard players set game_start mode 1

tag @a[team=setout] add gaming
team join playing @a[tag=gaming]
execute as @a[tag=gaming] run effect clear @s
execute as @a[tag=gaming] run clear @s
execute as @a[tag=gaming] run tp @s -151 109 177

effect give @a[tag=gaming] minecraft:instant_health 9 9 true

effect give @a[tag=gaming] minecraft:hunger 3 100 true

# 个人难度设定
execute as @a[tag=gaming] unless score @s personal_difficulty matches 0..4 run scoreboard players set @s personal_difficulty 2
execute as @a[scores={personal_difficulty=0}] run function re_test:difficulty/set_0
execute as @a[scores={personal_difficulty=1}] run function re_test:difficulty/set_1
execute as @a[scores={personal_difficulty=2}] run function re_test:difficulty/set_2
execute as @a[scores={personal_difficulty=3}] run function re_test:difficulty/set_3
execute as @a[scores={personal_difficulty=4}] run function re_test:difficulty/set_4
execute as @a[tag=gaming] run function re_test:difficulty/difficulty_output

# 开局安全时间
execute if score safe_time mode matches ..0 run scoreboard players set safe_time mode 0
execute if score safe_time mode matches 1.. store result score @e[tag=zomb_check_mark] cool_down run scoreboard players get safe_time mode
execute if score safe_time mode matches 1.. run tag @e[tag=zomb_check_mark] add cd
# 刷新枪械箱
setblock -57 92 -3 minecraft:redstone_block
# 刷新物资箱
setblock -28 91 3 minecraft:redstone_block
# 村长家发光引导
summon minecraft:block_display -214.0 113 50.0 {block_state:{Name:"minecraft:emerald_block"},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["villager"]}
summon minecraft:block_display -214.0 114 50.0 {block_state:{Name:"minecraft:cherry_button",Properties:{face:floor,facing:east}},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["villager_button"]}

# 彩蛋time
give @a[tag=gaming,tag=knockback_stick] minecraft:blaze_rod{Enchantments:[{id:"minecraft:knockback",lvl:3}]}
