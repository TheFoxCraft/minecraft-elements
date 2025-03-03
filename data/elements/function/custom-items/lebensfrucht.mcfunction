advancement revoke @s only elements:items/customs/lebensfrucht

execute as @s[scores={elements_custom-items_lebensfrucht_cooldown=0}] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Elements","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Lebensfrucht angewandt! ","color":"white"},{"text":"+0.5 Herzen","color":"dark_red"}]
execute as @s[scores={elements_custom-items_lebensfrucht_cooldown=0}] run scoreboard players add @s elements_maxhealth 1
execute as @s[scores={elements_custom-items_lebensfrucht_cooldown=0}] run clear @s apple[custom_model_data=1] 1
execute as @s[scores={elements_custom-items_lebensfrucht_cooldown=0}] at @s run playsound entity.player.levelup master @s


scoreboard players set @s elements_custom-items_lebensfrucht_cooldown 2