# - 地板消失：变蜘蛛网，失明

#监狱门 
fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 305 103 minecraft:red_stained_glass
fill 209 307 103 205 307 103 minecraft:purple_stained_glass

#下方锁链 
fill 206 297 103 208 303 108 air
fill 209 304 104 205 304 106 air
fill 208 304 107 206 304 107 minecraft:cobweb
fill 209 304 105 205 304 105 minecraft:cobweb

effect give @a[team=dead_player] minecraft:blindness infinite 0 true
