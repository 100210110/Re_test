#活塞+末地烛推人

#监狱门 
fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 305 103 minecraft:red_stained_glass
fill 209 307 103 205 307 103 minecraft:purple_stained_glass

fill 209 306 104 209 306 106 minecraft:cobweb
fill 208 306 107 206 306 107 minecraft:magenta_glazed_terracotta

fill 205 305 106 205 307 104 minecraft:sticky_piston[facing=east]
fill 206 305 106 206 307 104 birch_slab
setblock 205 306 105 redstone_block

# fill 208 304 106 208 304 104 air
schedule function re_test:fun_time/item/run/7_pushpush_1 40t append
schedule function re_test:fun_time/item/run/7_pushpush_2 60t append
# //schedule function setblock 205 306 105 redstone_block 40
# //schedule function setblock 205 306 105 air 60



