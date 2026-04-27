setblock ~ ~ ~ air
function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/crimson_vines"}
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast deine Maximale Anzahl an Farmslots platziert!","color": "#ff8800"}]
