#给玩家滞留强伤害和中毒，剩下最后一个时自动喷药水
#告知玩家只能活下来一个


#监狱门 
fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 305 103 minecraft:red_stained_glass
fill 209 307 103 205 307 103 minecraft:purple_stained_glass


title @a[team=dead_player] title {"text":"成为最后一人方可离开","color":"red"}
give @a[team=dead_player] splash_potion{Potion:"minecraft:harming",CustomPotionEffects:[{Id:7,Amplifier:2,Duration:0}],display:{Name:'{"text":"宝宝奶粉"}'}} 3
give @a[team=dead_player] splash_potion{Potion:"minecraft:harming",CustomPotionEffects:[{Id:6,Amplifier:2,Duration:0}],display:{Name:'{"text":"宝宝奶粉"}'}} 1
give @a[team=dead_player] splash_potion{Potion:"minecraft:harming",CustomPotionEffects:[{Id:7,Amplifier:2,Duration:0}],display:{Name:'{"text":"宝宝奶粉"}'}} 2

# schedule function execute as @a[team=dead_player] summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}} 500