item replace entity @s player.cursor with air
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast zu wenig Token!"}]
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute at @s run kill @n[type=armor_stand,tag=handelsmarkt_buy]
function elements:enderchest/handelsplatz/load