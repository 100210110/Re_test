tellraw @p [{"text":""},{"text":"\n"},{"text":"[锚点名字可见性]","bold":true,"color":"green"},{"text":"\n"},{"text":">>> ","color":"yellow"},{"text":"切换木桶锚点可见性","color":"yellow"}]
execute if score show_item_mark mode matches 1 run tellraw @p [{"text":""},{"text":"当前可见性: ","bold":true,"color":"yellow"},{"text":"[可见]","bold":true,"color":"green"}]
execute if score show_item_mark mode matches 0 run tellraw @s [{"text":""},{"text":"当前可见性: ","bold":true,"color":"yellow"},{"text":"[不可见]","bold":true,"color":"red"}]
