scoreboard players set @s Composter 4

execute unless entity @e[distance=..1.5,type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},limit=1] run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:bone_meal",Count: 10b}
execute at @s run data modify entity @e[distance=..1.5,type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},limit=1] Item merge value {id:"minecraft:bone_meal",Count:10b}

#restore hopper functionality
data merge block ~ ~-1 ~ {TransferCooldown:0}

#reset composter
scoreboard players set @s Composter 2