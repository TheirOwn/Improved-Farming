#places the carrot block
#then removes one from the stack of items
execute store result score @s itemage run data get entity @s Age
execute as @s at @s if score @s itemage < planttime itemage run particle minecraft:falling_dust minecraft:dirt ~ ~ ~ 0.3 0.3 0.3 1.0 15
execute as @s at @s if score @s itemage >= planttime itemage run setblock ~ ~.2 ~ minecraft:carrots replace
execute as @s if score @s itemage >= planttime itemage run function theirown-autoplant:required/removeoneitem
execute as @s if score @s itemage >= planttime itemage store result entity @s Age byte 1 run scoreboard players get zeroage itemage

