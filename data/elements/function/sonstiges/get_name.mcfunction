execute as @s at @s if score .server elements_get-name_status matches 1 run summon armor_stand ~ ~-2 ~ {Tags:[get-name],Invisible:1b,NoGravity:1b}
execute as @s at @s if score .server elements_get-name_status matches 1 run scoreboard players set @s elements_get-name_status 1

$execute as @s at @s if score .server elements_get-name_status matches 1 run item replace entity @n[tag=get-name] armor.head with player_head[profile={id:$(UUID)}]

execute as @s at @s if score .server elements_get-name_status matches 1.. run scoreboard players add .server elements_get-name_status 1


execute as @s at @s if score .server elements_get-name_status matches 4 run data modify storage elements_get-name name set from entity @n[tag=get-name] ArmorItems[3].components.minecraft:profile.name
execute as @s at @s if score .server elements_get-name_status matches 4 run kill @e[tag=get-name,type=armor_stand]
execute as @s at @s if score .server elements_get-name_status matches 4 run scoreboard players set @s elements_get-name_status 0
execute as @s at @s if score .server elements_get-name_status matches 4 run scoreboard players set @s elements_get-name_continue 1
execute as @s at @s if score .server elements_get-name_status matches 4 run scoreboard players set .server elements_get-name_status 1
