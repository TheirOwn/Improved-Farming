#function namespace:removeone
#objective itemcount - dummy
execute store result score @s itemcount run data get entity @s Item.Count
execute as @s run scoreboard players remove @s itemcount 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s itemcount