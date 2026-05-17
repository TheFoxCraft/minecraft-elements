
# tipp 1
execute store result score @s elements_enderchest_interface_clicked run clear @s flow_banner_pattern[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_3.tipp_1.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
item replace entity @s enderchest.9 with flow_banner_pattern[custom_data={elements:enderchest_item},custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["1"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["ersten"],"color": "gray","italic": false}'],custom_model_data=1] 1


# tipp 2
execute store result score @s elements_enderchest_interface_clicked run clear @s flow_banner_pattern[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_3.tipp_2.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
item replace entity @s enderchest.10 with flow_banner_pattern[custom_data={elements:enderchest_item},custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["2"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["zweiten"],"color": "gray","italic": false}'],custom_model_data=2] 1

# tipp 3
execute store result score @s elements_enderchest_interface_clicked run clear @s flow_banner_pattern[custom_model_data=3]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_3.tipp_3.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
item replace entity @s enderchest.11 with flow_banner_pattern[custom_data={elements:enderchest_item},custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["3"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["dritten"],"color": "gray","italic": false}'],custom_model_data=3] 1

# tipp 4
execute store result score @s elements_enderchest_interface_clicked run clear @s flow_banner_pattern[custom_model_data=4]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_3.tipp_4.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
item replace entity @s enderchest.12 with flow_banner_pattern[custom_data={elements:enderchest_item},custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["4"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["vierten"],"color": "gray","italic": false}'],custom_model_data=4] 1


# lösung
execute store result score @s elements_enderchest_interface_clicked run clear @s flow_banner_pattern[custom_model_data=5]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_3.solution.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
item replace entity @s enderchest.14 with flow_banner_pattern[custom_data={elements:enderchest_item},custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.solution.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.solution.description","color": "gray","italic": false}'],custom_model_data=5] 1
