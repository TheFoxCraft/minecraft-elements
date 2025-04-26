advancement revoke @s only elements:utility/allay_click
execute at @s run playsound entity.player.levelup master @s
tellraw @a ["",{"text": "Server: ","color": "yellow"},{"selector": "@s"},{"text": " hat einen Allay gefunden!"}]
execute if score .server elements_stage matches 2 run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Der Allay hat eine große Ladung Level gedroppt! "},{"text": "+500 Level","color": "green"}]
execute if score .server elements_stage matches 2 run xp add @s 500 levels
execute if score .server elements_stage matches 3 run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Der Allay hat eine große Ladung Level gedroppt! "},{"text": "+1.000 Level","color": "green"}]
execute if score .server elements_stage matches 3 run xp add @s 1000 levels
execute if score .server elements_stage matches 4 run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Der Allay hat eine große Ladung Level gedroppt! "},{"text": "+2.000 Level","color": "green"}]
execute if score .server elements_stage matches 4 run xp add @s 2000 levels
execute at @s run kill @n[tag=spawn_levelbaum_allay]
