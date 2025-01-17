execute unless score @s difficulty_style matches 0.. run scoreboard players set @s difficulty_style 0

# 正常风格
execute if score @s personal_difficulty matches 0 run tellraw @a[scores={difficulty_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">轮椅<","bold":true,"color":"#66CCFF"}]
execute if score @s personal_difficulty matches 1 run tellraw @a[scores={difficulty_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">简单<","bold":true,"color":"green"}]
execute if score @s personal_difficulty matches 2 run tellraw @a[scores={difficulty_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">普通<","bold":true,"color":"yellow"}]
execute if score @s personal_difficulty matches 3 run tellraw @a[scores={difficulty_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">困难<","bold":true,"color":"red"}]
execute if score @s personal_difficulty matches 4 run tellraw @a[scores={difficulty_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">地狱<","bold":true,"color":"dark_red"}]
# Moi的风格
execute if score @s personal_difficulty matches 0 run tellraw @a[scores={difficulty_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">80岁老奶奶の轮椅<","bold":true,"color":"#66CCFF"}]
execute if score @s personal_difficulty matches 1 run tellraw @a[scores={difficulty_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">8岁小宝宝の婴儿车<","bold":true,"color":"green"}]
execute if score @s personal_difficulty matches 2 run tellraw @a[scores={difficulty_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">20岁纯情男大の最爱<","bold":true,"color":"yellow"}]
execute if score @s personal_difficulty matches 3 run tellraw @a[scores={difficulty_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">28岁大哥副业の小曲<","bold":true,"color":"red"}]
execute if score @s personal_difficulty matches 4 run tellraw @a[scores={difficulty_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">18岁Moiの地狱<","bold":true,"color":"#f99af1"}]
# 明日方舟
execute if score @s personal_difficulty matches 0 run tellraw @a[scores={difficulty_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">维仕戴尔<","bold":true,"color":"#66CCFF"}]
execute if score @s personal_difficulty matches 1 run tellraw @a[scores={difficulty_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">玛恩纳~<","bold":true,"color":"green"}]
execute if score @s personal_difficulty matches 2 run tellraw @a[scores={difficulty_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">山守门<","bold":true,"color":"yellow"}]
execute if score @s personal_difficulty matches 3 run tellraw @a[scores={difficulty_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">令单通<","bold":true,"color":"red"}]
execute if score @s personal_difficulty matches 4 run tellraw @a[scores={difficulty_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">无藏n15<","bold":true,"color":"dark_red"}]
# 求生之路
execute if score @s personal_difficulty matches 0 run tellraw @a[scores={difficulty_style=3}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">新手<","bold":true,"color":"#66CCFF"}]
execute if score @s personal_difficulty matches 1 run tellraw @a[scores={difficulty_style=3}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">简单<","bold":true,"color":"green"}]
execute if score @s personal_difficulty matches 2 run tellraw @a[scores={difficulty_style=3}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">普通<","bold":true,"color":"yellow"}]
execute if score @s personal_difficulty matches 3 run tellraw @a[scores={difficulty_style=3}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">困难<","bold":true,"color":"red"}]
execute if score @s personal_difficulty matches 4 run tellraw @a[scores={difficulty_style=3}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">专家<","bold":true,"color":"dark_red"}]