#createcomposter
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~ ~ minecraft:composter unless entity @e[name=ComposterCloud,distance=..1] run function theirown-autoplant:required/composter/createcomposter


#Detect when ready and use composttime to delay how long the dirt takes to make
#increment time and check it
execute as @e[scores={Composter=3}] run scoreboard players add @s CompostTime 1
execute as @e[scores={Composter=3}] at @s if block ~ ~ ~ minecraft:composter[level=8] if score @s CompostTime <= composttime CompostTime run setblock ~ ~ ~ minecraft:composter[level=7] replace
execute as @e[scores={Composter=2,CompostTime=1..}] run scoreboard players set @s CompostTime 0

#setup compost time now
execute as @e[scores={Composter=2}] at @s if block ~ ~ ~ minecraft:composter[level=6] run function theirown-autoplant:required/composter/dirtcompostsetup


#Force hopper to not pull until the composter is ready
execute as @e[scores={Composter=1..}] at @s if score @s CompostTime < composttime CompostTime if block ~ ~-1 ~ minecraft:hopper run data merge block ~ ~-1 ~ {TransferCooldown:100000}
execute as @e[scores={Composter=3}] at @s if score @s CompostTime > composttime CompostTime if block ~ ~-1 ~ minecraft:hopper run function theirown-autoplant:required/composter/dcomposterhop



#Detect when emptied
execute as @e[scores={Composter=3}] at @s if block ~ ~ ~ minecraft:composter[level=0] run function theirown-autoplant:required/composter/emptydirtcomposter