setblock ~ ~ ~ air
loot give @s loot elements:items/farm_slots/stage_2
tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du hast deine Maximale Anzahl an Farmslots platziert!","color": "#ff8800"}]