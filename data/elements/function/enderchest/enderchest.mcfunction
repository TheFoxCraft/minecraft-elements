execute as @a[scores={elements_enderchest_level_enderchest=1,elements_enderchest_interface_number=4}] store success score @s elements_enderchest_interface_clicked run clear @s magenta_glazed_terracotta[custom_model_data=3]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-save with storage elements_getid
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":3}}}]
execute as @a[scores={elements_enderchest_level_enderchest=1,elements_enderchest_interface_number=4}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=3] 1
