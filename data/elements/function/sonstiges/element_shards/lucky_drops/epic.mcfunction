$execute store result score @s elements_random run random value 1..$(rate)
$execute unless score @s elements_random matches 1..$(chance) run return fail
title @s times 20 100 20
title @s title ["",{"text": "ccc","color": "light_purple","obfuscated": true},{"text": " Lucky Drop ","color": "light_purple"},{"text": "ccc","color": "light_purple","obfuscated": true}]
title @s subtitle ["",{"translate": "elements.main.rarities.epic","color": "dark_purple"}," - ",{"text": "2.000 Level","color": "green"}]
xp add @s 2000 levels
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"Lucky Drop! ",{"translate": "elements.main.rarities.epic"}," - ",{"text": "2.000 Level","color": "green"}]
execute at @s run playsound elements:luckydrop.epic