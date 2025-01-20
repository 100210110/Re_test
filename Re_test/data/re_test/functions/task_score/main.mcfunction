# 运行此函数初始化界面

# -------------

# 任务目标：

# - 按下村长家的按钮

# - 在码头部署着陆点

# - 存活下去 等待直升机抵达

#   - 已获得直升机装备支持

# - 登上救援直升机

# 击杀榜：

# §e§l-------------§r§r
# §b§l任务目标：§r§r
# §a-§r§e按下村长家的按钮§r
# §a- §r§e在码头部署着陆点§r
# §a- §r§e存活下去 等待直升机抵达§r
# §a  - §r§e已获得直升机装备支持§r
# §a- §r§c§l登上救援直升机§r§r
# §c§l击杀榜：§r§r

scoreboard players set §b§l任务目标：§r§r kill 10000
scoreboard players set §a- §r§e按下村长家按钮§r kill 9999
scoreboard players set §a- §r§e码头部署着陆点§r kill 9998
scoreboard players set §a- §r§e等待救援抵达§r kill 9997
scoreboard players set §a  - §r§e获得装备支持§r kill 9996
scoreboard players set §a- §r§e登上救援直升机§r§r kill 9995
scoreboard players set §c§l击杀榜：§r§r kill 9990
scoreboard players set   kill 9980
scoreboard players set @a[tag=gaming] kill 0
scoreboard players set §e§l-------------§r§r kill -1