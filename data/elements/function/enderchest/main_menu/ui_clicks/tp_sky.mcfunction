execute store result storage elements_rotation_dimension sky int 1 run scoreboard players get @s elements_enderchest_settings_rotation_sky
function elements:enderchest/settings/dimension_rotation/sky_tp with storage elements_rotation_dimension
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
xp add @s 0 points
scoreboard players set @s elements_enderchest_interface_clicked 0
