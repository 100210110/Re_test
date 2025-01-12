tag @a remove helic
tag @a remove dead
scoreboard players reset @a deathCount
difficulty hard
scoreboard players set game_start mode 1

tag @a[gamemode=adventure] add gaming
team join playing @a[tag=gaming]
execute as @a[tag=gaming] run effect clear @s
execute as @a[tag=gaming] run clear @s
execute as @a[tag=gaming] run tp @s -151 109 177
execute as @a[tag=gaming] run attribute @s minecraft:generic.max_health base set 60
effect give @a[tag=gaming] minecraft:instant_health 9 9 true
effect give @a[tag=gaming] minecraft:resistance infinite 0 true
effect give @a[tag=gaming] minecraft:hunger 3 100 true

# 开局刷新冷却时间
scoreboard players set @e[tag=zomb_check_mark] cool_down 400
tag @e[tag=zomb_check_mark] add cd
# 刷新枪械箱
setblock -57 92 -3 minecraft:redstone_block
# 刷新物资箱
setblock -28 91 3 minecraft:redstone_block
# 村长家发光引导
summon minecraft:block_display -214.0 113 50.0 {block_state:{Name:"minecraft:emerald_block"},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["villager"]}
summon minecraft:block_display -214.0 114 50.0 {block_state:{Name:"minecraft:cherry_button",Properties:{face:floor,facing:east}},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["villager_button"]}
