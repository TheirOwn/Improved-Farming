#createcomposter
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~ ~ minecraft:composter unless entity @e[name=ComposterCloud,distance=..1] run function theirown-autoplant:required/composter/createcomposter


#Detect when ready
#if compostmode == 1: bonemeal
execute as @e[scores={Composter=2}] at @s if block ~ ~ ~ minecraft:composter[level=7] run scoreboard players set @s Composter 3

execute if block ~ ~ ~ minecraft:composter[level=8] if block ~ ~-1 ~ minecraft:hopper run setblock ~ ~ ~ minecraft:composter[level=0]
execute if block ~ ~ ~ minecraft:composter[level=7..] if block ~ ~-1 ~ minecraft:hopper run data merge block ~ ~-1 ~ {TransferCooldown:1000}


#Detect when emptied
execute as @e[scores={Composter=3}] at @s if block ~ ~ ~ minecraft:composter[level=0] run function theirown-autoplant:required/composter/emptycomposter