item replace entity @s player.cursor from entity @s enderchest.26
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
tellraw @s {"text": "Status aktualisiert!","color": "gold"}
function elements:enderchest/load
function elements:custom-items/show-stats
