

# 正常风格
execute if score @s personal_difficulty matches 0 run tellraw @a[scores={hard_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">轮椅<","bold":true,"color":"#66CCFF"}]
execute if score @s personal_difficulty matches 1 run tellraw @a[scores={hard_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">简单<","bold":true,"color":"green"}]
execute if score @s personal_difficulty matches 2 run tellraw @a[scores={hard_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">普通<","bold":true,"color":"yellow"}]
execute if score @s personal_difficulty matches 3 run tellraw @a[scores={hard_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">困难<","bold":true,"color":"red"}]
execute if score @s personal_difficulty matches 4 run tellraw @a[scores={hard_style=0}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">地狱<","bold":true,"color":"dark_red"}]
# Moi的风格
execute if score @s personal_difficulty matches 0 run tellraw @a[scores={hard_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">80岁老奶奶坐轮椅模式<","bold":true,"color":"#66CCFF"}]
execute if score @s personal_difficulty matches 1 run tellraw @a[scores={hard_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">8岁小宝宝坐婴儿车模式<","bold":true,"color":"green"}]
execute if score @s personal_difficulty matches 2 run tellraw @a[scores={hard_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">2岁纯情男大の普通模式<","bold":true,"color":"yellow"}]
execute if score @s personal_difficulty matches 3 run tellraw @a[scores={hard_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">8大哥副业小曲の困难模式<","bold":true,"color":"red"}]
execute if score @s personal_difficulty matches 4 run tellraw @a[scores={hard_style=1}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">18岁Moiの地狱模式<","bold":true,"color":"dark_red"}]
# 明日方舟
execute if score @s personal_difficulty matches 0 run tellraw @a[scores={hard_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">轮椅<","bold":true,"color":"#66CCFF"}]
execute if score @s personal_difficulty matches 1 run tellraw @a[scores={hard_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">简单<","bold":true,"color":"green"}]
execute if score @s personal_difficulty matches 2 run tellraw @a[scores={hard_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">普通<","bold":true,"color":"yellow"}]
execute if score @s personal_difficulty matches 3 run tellraw @a[scores={hard_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">困难<","bold":true,"color":"red"}]
execute if score @s personal_difficulty matches 4 run tellraw @a[scores={hard_style=2}] [{"text":""},{"selector":"@s","color":"green"},{"text":" 的难度为: ","bold":true,"color":"yellow"},{"text":">地狱<","bold":true,"color":"dark_red"}]