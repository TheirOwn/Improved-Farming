#TheirOwn's Personal Testing Datapack
#9/16/18

############
#Seed Planting Section
############
scoreboard players add seedcounter seedtick 1

#Put a # in front of this next line to disable seeds from replanting
execute if score seedcounter seedtick >= seeddelay seedtick run function theirown-autoplant:required/plantseed

#Put a # in front of the next line to disable trees from replanting
execute if score enabletrees tap-config matches 1 if score seedcounter seedtick >= seeddelay seedtick run function theirown-autoplant:required/planttree


execute if score seedcounter seedtick >= seeddelay seedtick run scoreboard players set seedcounter seedtick 0


#############
#Composter Section
#############
execute if score compostmode tap-config matches 1 run function theirown-autoplant:required/compostmain
execute if score compostmode tap-config matches 0 run function theirown-autoplant:required/dirtcompostmain

execute as @e[name=ComposterCloud] at @s unless block ~ ~ ~ minecraft:composter run kill @s


#############
#Config setup
#############
execute as @a[scores={tap-trigger=1}] run function theirown-autoplant:config/mainconfig
execute as @a[scores={tap-trigger=2}] run function theirown-autoplant:config/compostconfig
execute as @a[scores={tap-trigger=3}] run function theirown-autoplant:config/plantconfig
execute as @a[scores={tap-trigger=4}] run function theirown-autoplant:config/bonemealconfig
execute as @a[scores={tap-trigger=5..}] run function theirown-autoplant:config/configchanger
scoreboard players enable @a tap-trigger
