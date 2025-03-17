
execute as @s at @s if score @s elements_get-name_progress matches 0 run summon armor_stand ~ ~-3 ~ {Tags:[get-name],Invisible:1b,NoGravity:1b}
$execute as @s at @s if score @s elements_get-name_progress matches 0 run item replace entity @n[tag=get-name] armor.head with player_head[profile={id:$(UUID)}]




execute as @s at @s if score @s elements_get-name_progress matches 1 store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s at @s if score @s elements_get-name_progress matches 1 run function elements:sonstiges/get_name/get_name_set with storage elements_getid
execute as @s at @s if score @s elements_get-name_progress matches 1 run kill @n[tag=get-name,type=armor_stand]
execute as @s at @s if score @s elements_get-name_progress matches 1 run scoreboard players set @s elements_get-name_status 1


execute as @s at @s if score @s elements_get-name_progress matches 0.. run scoreboard players add @s elements_get-name_progress 1

execute as @s at @s if score @s elements_get-name_progress matches 2 run scoreboard players set @s elements_get-name_progress 0