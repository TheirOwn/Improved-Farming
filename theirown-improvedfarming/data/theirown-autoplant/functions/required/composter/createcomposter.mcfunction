scoreboard players add @s Composter 1
summon minecraft:area_effect_cloud ~ ~-.5 ~ {Duration:2000000000,CustomName:"\"ComposterCloud\""}
execute as @e[name=ComposterCloud] at @s if entity @e[type=minecraft:item,scores={Composter=1},distance=..1] run scoreboard players add @s Composter 1
kill @s
scoreboard players add @e[name=ComposterCloud,scores={Composter=1}] Composter 1
#say Composter Made @e[name=ComposterCloud]