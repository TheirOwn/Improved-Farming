#setup file
#initialize all scoreboard objectives

#remove later
function theirown-autoplant:uninstall

#FOR AUTO PLANTING
scoreboard objectives add itemcount dummy
scoreboard objectives add itemage dummy
scoreboard objectives add seedtick dummy

scoreboard players set seeddelay seedtick 20
scoreboard players set seedcounter seedtick 0
scoreboard players set agezero itemage 0
scoreboard players set planttime itemage 120 

scoreboard objectives add tap-config dummy
scoreboard players set enabletrees tap-config 1

#FOR IMPROVED COMPOST
#compostmode 1- bonemeal
#compostmode 0- dirt
scoreboard objectives add Composter dummy "Composter"
scoreboard objectives add CompostTime dummy

scoreboard players set compostmode tap-config 1 
scoreboard players set composttime CompostTime 120 

#FOR CONFIG
scoreboard objectives add tap-trigger trigger "tap-trigger"
scoreboard players enable @a tap-trigger

#not working right now?
gamerule sendCommandFeedback false
tellraw @a ["",{"text":"Thanks for using TheirOwn's Improved Farming!","color":"gold"}]
tellraw @a ["",{"text":"Click here to change config settings","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 1"},"color":"green"}]

#Plan is eventually to make choice between dirt and bonemeal number of output
#as well as number of ticks for planttime