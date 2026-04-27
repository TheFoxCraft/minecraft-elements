execute at @s run summon chest_minecart ~ ~-1 ~ {Tags:["enderchest"],NoGravity:true}
$execute at @s run data modify entity @n[type=chest_minecart,tag=enderchest] Items set from storage elements_enderchest_$(ID) enderchest
execute at @s run item replace entity @s enderchest.0 from entity @n[type=chest_minecart,tag=enderchest] container.0
execute at @s run item replace entity @s enderchest.1 from entity @n[type=chest_minecart,tag=enderchest] container.1
execute at @s run item replace entity @s enderchest.2 from entity @n[type=chest_minecart,tag=enderchest] container.2
execute at @s run item replace entity @s enderchest.3 from entity @n[type=chest_minecart,tag=enderchest] container.3
execute at @s run item replace entity @s enderchest.4 from entity @n[type=chest_minecart,tag=enderchest] container.4
execute at @s run item replace entity @s enderchest.5 from entity @n[type=chest_minecart,tag=enderchest] container.5
execute at @s run item replace entity @s enderchest.6 from entity @n[type=chest_minecart,tag=enderchest] container.6
execute at @s run item replace entity @s enderchest.7 from entity @n[type=chest_minecart,tag=enderchest] container.7
execute at @s run item replace entity @s enderchest.8 from entity @n[type=chest_minecart,tag=enderchest] container.8
execute at @s run item replace entity @s enderchest.9 from entity @n[type=chest_minecart,tag=enderchest] container.9
execute at @s run item replace entity @s enderchest.10 from entity @n[type=chest_minecart,tag=enderchest] container.10
execute at @s run item replace entity @s enderchest.11 from entity @n[type=chest_minecart,tag=enderchest] container.11
execute at @s run item replace entity @s enderchest.12 from entity @n[type=chest_minecart,tag=enderchest] container.12
execute at @s run item replace entity @s enderchest.13 from entity @n[type=chest_minecart,tag=enderchest] container.13
execute at @s run item replace entity @s enderchest.14 from entity @n[type=chest_minecart,tag=enderchest] container.14
execute at @s run item replace entity @s enderchest.15 from entity @n[type=chest_minecart,tag=enderchest] container.15
execute at @s run item replace entity @s enderchest.16 from entity @n[type=chest_minecart,tag=enderchest] container.16
execute at @s run item replace entity @s enderchest.17 from entity @n[type=chest_minecart,tag=enderchest] container.17
execute at @s run item replace entity @s enderchest.18 from entity @n[type=chest_minecart,tag=enderchest] container.18
execute at @s run item replace entity @s enderchest.19 from entity @n[type=chest_minecart,tag=enderchest] container.19
execute at @s run item replace entity @s enderchest.20 from entity @n[type=chest_minecart,tag=enderchest] container.20
execute at @s run item replace entity @s enderchest.21 from entity @n[type=chest_minecart,tag=enderchest] container.21
execute at @s run item replace entity @s enderchest.22 from entity @n[type=chest_minecart,tag=enderchest] container.22
execute at @s run item replace entity @s enderchest.23 from entity @n[type=chest_minecart,tag=enderchest] container.23
execute at @s run item replace entity @s enderchest.24 from entity @n[type=chest_minecart,tag=enderchest] container.24
execute at @s run item replace entity @s enderchest.25 from entity @n[type=chest_minecart,tag=enderchest] container.25
execute at @s run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck"}',custom_model_data=3] 1
execute at @s run data remove entity @e[type=chest_minecart,tag=enderchest,limit=1] Items
execute at @s run kill @e[type=chest_minecart,tag=enderchest]
execute at @s run scoreboard players set @s elements_enderchest_interface_number 4
execute at @s run scoreboard players set @s elements_enderchest_interface_number_old 4
