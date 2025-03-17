
execute as @s at @s if score @s elements_get-name_progress matches 0 run summon armor_stand ~ ~-3 ~ {Tags:[get-name],Invisible:1b,NoGravity:1b}
execute as @s at @s if score @s elements_get-name_progress matches 0 run scoreboard players set @s elements_get-name_progress 1
$execute as @s at @s if score @s elements_get-name_progress matches 0 run item replace entity @n[tag=get-name] armor.head with player_head[profile={id:$(UUID)}]


execute as @s at @s if score @s elements_get-name_progress matches 0.. run scoreboard players add @s elements_get-name_progress 1

execute as @s at @s if score @s elements_get-name_progress matches 4 store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s at @s if score @s elements_get-name_progress matches 4 run data modify storage elements_get-name name set from entity @n[tag=get-name] ArmorItems[3].components.minecraft:profile.name
execute as @s at @s if score @s elements_get-name_progress matches 4 run kill @n[tag=get-name,type=armor_stand]
execute as @s at @s if score @s elements_get-name_progress matches 4 run scoreboard players set @s elements_get-name_status 1
execute as @s at @s if score @s elements_get-name_progress matches 4 run scoreboard players set @s elements_get-name_progress 0

