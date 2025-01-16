# - 鱼竿钓人: 地板消失几块，存活玩家钓人

#监狱门 
fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 305 103 minecraft:red_stained_glass
fill 209 307 103 205 307 103 minecraft:purple_stained_glass

#上玻璃
fill 209 308 104 205 308 106 tinted_glass
#存活玩家tp监狱上方 
tp @a[tag=!dead,tag=gaming] 207 311 107
give @a[tag=!dead,tag=gaming] minecraft:fishing_rod
title @a[tag=!dead,tag=gaming] title {"text":"开始钓鱼咯！","color":"green"}

#下玻璃
fill 208 304 105 205 304 106 tinted_glass
#下方锁链 
fill 206 297 103 208 303 108 air