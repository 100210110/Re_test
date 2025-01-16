# 欢乐时光总是短暂的，三十秒后重置地图，开门，清除本次惩罚给予的物品、掉落物，清除战败team,拉回玩家
# 但玩家状态不重置，活就活，死就死，10秒后全部清除状态并回满血

#------------------复原区------------------------#
#上玻璃+玻璃下
fill 209 308 104 205 308 106 tinted_glass
fill 208 305 107 206 307 107 air
fill 209 305 104 205 307 106 air
#下玻璃
fill 209 304 104 205 304 106 tinted_glass
fill 208 304 107 206 304 107 tinted_glass
#下方锁链 fill 206 297 103 208 303 108 air
#监狱门 fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 307 103 iron_bars
fill 206 305 103 206 307 103 air
#下方锁链 
clone 208 190 120 206 196 125 206 297 103

#title 持续
title @a times 5 15 10
#------------------玩家区------------------------#
team empty dead_player
clear @a[tag=gaming]
effect clear @a[tag=gaming]
effect give @a[tag=gaming] minecraft:regeneration 10 10
