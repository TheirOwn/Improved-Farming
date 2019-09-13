scoreboard players set @s Composter 4


execute unless entity @e[distance=..1.5,type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},limit=1] run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:dirt",Count: 1b}
data modify entity @e[distance=..1.5,type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},limit=1] Item set value {id:"minecraft:dirt",Count:1b}


#reset composter
scoreboard players set @s Composter 2