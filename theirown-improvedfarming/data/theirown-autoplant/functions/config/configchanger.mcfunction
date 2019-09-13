#scoreboard players set @s tap-trigger 0
#tellraw @s ["",{"text":"Config Changer reached","color":"white","bold":"true"}]

#Dirt mode
execute if score @s tap-trigger matches 4 run scoreboard players set compostmode tap-config 0
tellraw @s[scores={tap-trigger=3..4}]  ["",{"text":"Composter Settings Changed!","color":"gold"}]

#bonemeal mode
execute if score @s tap-trigger matches 5 run scoreboard players set compostmode tap-config 1

#disabletrees
execute if score @s tap-trigger matches 7 run scoreboard players set enabletrees tap-config 0
tellraw @s[scores={tap-trigger=7..8}]  ["",{"text":"Tree Settings Changed!","color":"gold"}]
#enabletrees
execute if score @s tap-trigger matches 8 run scoreboard players set enabletrees tap-config 1 

#instant plant mode
execute if score @s tap-trigger matches 9 run scoreboard players set planttime itemage 0
execute if score @s tap-trigger matches 9 run scoreboard players set seeddelay seedtick 1
tellraw @s[scores={tap-trigger=9}]  ["",{"text":"Instant Planting Activated!","color":"gold"}]
execute if score @s tap-trigger matches 10 run scoreboard players set planttime itemage 120
execute if score @s tap-trigger matches 10 run scoreboard players set seeddelay seedtick 20
tellraw @s[scores={tap-trigger=10}]  ["",{"text":"Instant Planting Disabled!","color":"gold"}]


scoreboard players set @s tap-trigger 0