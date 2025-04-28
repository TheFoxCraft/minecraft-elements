scoreboard players add @s elements_enderchest_settings_dimension 1
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_settings_dimension=5..,elements_enderchest_settings_tp-mode=2}] run scoreboard players set @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_enderchest_settings_dimension=6..,elements_enderchest_settings_tp-mode=3}] run scoreboard players set @s elements_enderchest_settings_dimension 1
function elements:enderchest/load