execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
scoreboard players set @s elements_enderchest_interface_number 10
scoreboard players set @s elements_enderchest_interface_number_old 10
function elements:enderchest/enderchest-clear
scoreboard players set @s elements_enderchest_handelsplatz_interface 0
scoreboard players set @s elements_enderchest_handelsplatz_page 0
scoreboard players set @s elements_enderchest_handelsplatz_buy_locked 1
function elements:enderchest/handelsplatz/load
scoreboard players set @s elements_enderchest_interface_clicked 0
