#finds any seeds on any farmland without any crops on it
execute as @e[type=minecraft:item,name=Carrot] at @s if block ~ ~-.7 ~ minecraft:farmland if block ~ ~.2 ~ minecraft:air run function theirown-autoplant:required/seeds/plantcarrot
execute as @e[type=minecraft:item,name="Wheat Seeds"] at @s if block ~ ~-.7 ~ minecraft:farmland if block ~ ~.2 ~ minecraft:air run function theirown-autoplant:required/seeds/plantwheat
execute as @e[type=minecraft:item,name=Potato] at @s if block ~ ~-.7 ~ minecraft:farmland if block ~ ~.2 ~ minecraft:air run function theirown-autoplant:required/seeds/plantpotato
execute as @e[type=minecraft:item,name="Beetroot Seeds"] at @s if block ~ ~-.7 ~ minecraft:farmland if block ~ ~.2 ~ minecraft:air run function theirown-autoplant:required/seeds/plantbeetroot
execute as @e[type=minecraft:item,name="Melon Seeds"] at @s if block ~ ~-.7 ~ minecraft:farmland if block ~ ~.2 ~ minecraft:air run function theirown-autoplant:required/seeds/plantmelon
execute as @e[type=minecraft:item,name="Pumpkin Seeds"] at @s if block ~ ~-.7 ~ minecraft:farmland if block ~ ~.2 ~ minecraft:air run function theirown-autoplant:required/seeds/plantpumpkin
execute as @e[type=minecraft:item,name="Nether Wart"] at @s if block ~ ~-.7 ~ minecraft:soul_sand if block ~ ~.2 ~ minecraft:air run function theirown-autoplant:required/seeds/plantnetherwart

