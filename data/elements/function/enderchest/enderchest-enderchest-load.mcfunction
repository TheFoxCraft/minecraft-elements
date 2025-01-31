execute as @s at @s run summon chest_minecart ~ ~-1 ~ {Tags:["enderchest"],NoGravity:true}
$execute as @s at @s run data modify entity @e[type=chest_minecart,tag=enderchest,sort=nearest,limit=1] Items set from storage elements_enderchest_$(ID) enderchest
execute as @s run item replace entity @s enderchest.0 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.0
execute as @s run item replace entity @s enderchest.1 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.1
execute as @s run item replace entity @s enderchest.2 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.2
execute as @s run item replace entity @s enderchest.3 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.3
execute as @s run item replace entity @s enderchest.4 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.4
execute as @s run item replace entity @s enderchest.5 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.5
execute as @s run item replace entity @s enderchest.6 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.6
execute as @s run item replace entity @s enderchest.7 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.7
execute as @s run item replace entity @s enderchest.8 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.8
execute as @s run item replace entity @s enderchest.9 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.9
execute as @s run item replace entity @s enderchest.10 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.10
execute as @s run item replace entity @s enderchest.11 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.11
execute as @s run item replace entity @s enderchest.12 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.12
execute as @s run item replace entity @s enderchest.13 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.13
execute as @s run item replace entity @s enderchest.14 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.14
execute as @s run item replace entity @s enderchest.15 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.15
execute as @s run item replace entity @s enderchest.16 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.16
execute as @s run item replace entity @s enderchest.17 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.17
execute as @s run item replace entity @s enderchest.18 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.18
execute as @s run item replace entity @s enderchest.19 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.19
execute as @s run item replace entity @s enderchest.20 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.20
execute as @s run item replace entity @s enderchest.21 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.21
execute as @s run item replace entity @s enderchest.22 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.22
execute as @s run item replace entity @s enderchest.23 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.23
execute as @s run item replace entity @s enderchest.24 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.24
execute as @s run item replace entity @s enderchest.25 from entity @e[type=chest_minecart,tag=enderchest,limit=1,sort=nearest] container.25
execute as @s run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück"}',custom_model_data=3] 1
execute as @s run data remove entity @e[type=chest_minecart,tag=enderchest,limit=1] Items
execute as @s run kill @e[type=chest_minecart,tag=enderchest]
execute as @s run scoreboard players set @s elements_enderchest_interface_number 4