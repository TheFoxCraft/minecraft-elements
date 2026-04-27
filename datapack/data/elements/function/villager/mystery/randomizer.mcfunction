execute as @s store result score @s elements_mystery_lootbox_random run random value 1..10000

summon armor_stand ~ ~ ~ {Tags:["elements_mystery_loot"],Invisible:1b,Invulnerable:1b}

#Lebensfrucht
execute if score @s elements_mystery_lootbox_random matches 1..100 run loot replace entity @n[tag=elements_mystery_loot] weapon.mainhand loot elements:items/customs/lebensfrucht
#Templates
execute if score @s elements_mystery_lootbox_random matches 101..1100 run loot replace entity @n[tag=elements_mystery_loot] weapon.mainhand loot elements:items/mystery/template
#Barriere-Stab
execute if score @s elements_mystery_lootbox_random matches 1101..1120 run loot replace entity @n[tag=elements_mystery_loot] weapon.mainhand loot elements:items/mystery/barriere_stab
#TP-Schwert
execute if score @s elements_mystery_lootbox_random matches 1121..1140 run loot replace entity @n[tag=elements_mystery_loot] weapon.mainhand loot elements:items/mystery/tp_schwert
#Zerberster
execute if score @s elements_mystery_lootbox_random matches 1141..1150 run loot replace entity @n[tag=elements_mystery_loot] weapon.mainhand loot elements:items/mystery/zerberster
# Trash (rest)
execute if score @s elements_mystery_lootbox_random matches 1151..9999 run loot replace entity @n[tag=elements_mystery_loot] weapon.mainhand loot elements:items/mystery/trash
execute if score @s elements_mystery_lootbox_random matches 9999 if score .server elements_uniqueitem_other_rolex matches 0 run function elements:uniques/trigger/rolex

#Excalibur / HAUPT-GEWINN
execute if score @s elements_mystery_lootbox_random matches 10000 run loot replace entity @n[tag=elements_mystery_loot] weapon.mainhand loot elements:items/mystery/excalibur
execute if score @s elements_mystery_lootbox_random matches 10000 run tellraw @a ["",{"text": "Server: \n","color": "yellow"},{"selector": "@s","color": "gold","bold": true},{"text": " hat den Jackpot bei den Lootboxen gewonnen und erhält dafür Excalibur und ","color": "gold","bold": true},{"score": {"name": ".server","objective": "elements_mystery_lootbox_jackpot"},"color": "green","bold": true},{"text": " Level","color": "green","bold": true},{"text": " aus dem Pot!","color": "gold","bold": true}]
execute if score @s elements_mystery_lootbox_random matches 10000 store result storage elements_mystery jackpot int 1 run scoreboard players get .server elements_mystery_lootbox_jackpot
execute if score @s elements_mystery_lootbox_random matches 10000 run function elements:villager/mystery/give_jackpot with storage elements_mystery
execute if score @s elements_mystery_lootbox_random matches 10000 run scoreboard players set .server elements_mystery_lootbox_jackpot 10000
execute if score @s elements_mystery_lootbox_random matches 10000 as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 100 1



$execute in elements:hub positioned -14.5 101.0 -8.50 if entity @e[type=item,tag=mystery_loot,distance=..0.1] run summon item -14.5 101.7 -8.50 {Tags:["mystery_loot","mystery_loot_handle","gravity_stone_ignore"],Item:{id:"rotten_flesh"},Owner:$(UUID),Age:-1,PickupDelay:20,Invulnerable:1b}
$execute in elements:hub positioned -14.5 101.0 -8.50 unless entity @e[type=item,tag=mystery_loot,distance=..0.1] run summon item -14.5 101.0 -8.50 {Tags:["mystery_loot","mystery_loot_handle","gravity_stone_ignore"],Item:{id:"rotten_flesh"},Owner:$(UUID),Age:-1,PickupDelay:20,Invulnerable:1b}

data modify entity @n[tag=mystery_loot_handle,type=item] Item set from entity @n[tag=elements_mystery_loot,type=armor_stand] HandItems.[0]
tag @n[tag=mystery_loot_handle,type=item] remove mystery_loot_handle

kill @n[tag=elements_mystery_loot,type=armor_stand]