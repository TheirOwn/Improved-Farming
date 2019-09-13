execute unless entity @e[distance=..1.5,type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},limit=1] run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:bone_meal",Count: 9b}
data modify entity @e[distance=..1.5,type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},limit=1] Item merge value {id:"minecraft:bone_meal",Count:9b}
