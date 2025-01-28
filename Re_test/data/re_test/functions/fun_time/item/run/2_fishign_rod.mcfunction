# - 鱼竿钓人: 地板消失几块，存活玩家钓人

#监狱门 
fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 305 103 minecraft:red_stained_glass
fill 209 307 103 205 307 103 minecraft:purple_stained_glass

#上玻璃
fill 209 308 104 205 308 106 air
#存活玩家tp监狱上方 
give @a[team=lobby] minecraft:fishing_rod{Re_tool:[Re_tool,fun_time],HideFlags:255,Unbreakable:1b,display:{Name:'{"text":"钓人竿","color":"gold","italic":False,"bold":True}',Lore:['{"text":"惩罚时间的鱼竿","color":"aqua","italic":False}','{"text":"好好调戏一下掉队的伙伴"}']}}
title @a[team=lobby] title {"text":"开始钓鱼咯！","color":"green"}

#下玻璃
fill 208 304 105 205 304 106 air
#下方锁链 
fill 206 297 103 208 303 108 air

spreadplayers 207 103 1 2 false @a[team=lobby]
execute as @a[team=lobby] at @s run tp @s ~ 309 103 0 60
