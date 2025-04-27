advancement revoke @s only elements:items/customs/lebensfrucht





execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 1 if score @s elements_maxhealth matches 6.. run tag @s add elements_custom-items_lebensfrucht_limit
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 2 if score @s elements_maxhealth matches 10.. run tag @s add elements_custom-items_lebensfrucht_limit
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 3 if score @s elements_maxhealth matches 14.. run tag @s add elements_custom-items_lebensfrucht_limit
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 4 if score @s elements_maxhealth matches 18.. run tag @s add elements_custom-items_lebensfrucht_limit
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 5 if score @s elements_maxhealth matches 22.. run tag @s add elements_custom-items_lebensfrucht_limit
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 6 if score @s elements_maxhealth matches 26.. run tag @s add elements_custom-items_lebensfrucht_limit
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 7 if score @s elements_maxhealth matches 30.. run tag @s add elements_custom-items_lebensfrucht_limit






execute as @s[scores={elements_custom-items_item-click_cooldown=0},tag=elements_custom-items_lebensfrucht_limit] run tellraw @s ["",{"translate":"elements.main.other.[","color":"gray"},{"translate":"elements.main.other.elements","color":"light_purple"},{"translate":"elements.main.other.]","color":"gray"},{"text":"Zum aktuellen Zeitpunkt kannst du nicht mehr Herzen haben","color":"red"}]

execute as @s[scores={elements_custom-items_item-click_cooldown=0},tag=!elements_custom-items_lebensfrucht_limit] run tellraw @s ["",{"translate":"elements.main.other.[","color":"gray"},{"translate":"elements.main.other.elements","color":"light_purple"},{"translate":"elements.main.other.]","color":"gray"},{"text":"Lebensfrucht angewandt! ","color":"white"},{"text":"+0.5 Herzen","color":"green"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0},tag=!elements_custom-items_lebensfrucht_limit] run scoreboard players add @s elements_maxhealth 1
execute as @s[scores={elements_custom-items_item-click_cooldown=0},tag=!elements_custom-items_lebensfrucht_limit] run clear @s apple[custom_model_data=1] 1
execute as @s[scores={elements_custom-items_item-click_cooldown=0},tag=!elements_custom-items_lebensfrucht_limit] at @s run playsound entity.player.levelup master @s

tag @s remove elements_custom-items_lebensfrucht_limit
scoreboard players set @s elements_custom-items_item-click_cooldown 2