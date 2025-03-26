setblock ~ ~ ~ air
loot give @s loot elements:items/farm_slots/stage_2
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast deine Maximale Anzahl an Farmslots platziert!","color": "#ff8800"}]