advancement revoke @s only elements:mana-items/zentrierer


execute if score @s elements_custom-items_item-click_cooldown matches 0 if entity @s[predicate=elements:sneaking,predicate=elements:strg] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst nicht Strg und Shift gleichzeitig drücken!","color": "red"}]


execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches 10.. if entity @s[predicate=!elements:sneaking,predicate=!elements:strg] run function elements:custom-items/mana-items/zentrierer/calc_rotation
execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches 10.. if entity @s[predicate=!elements:sneaking,predicate=!elements:strg] run function elements:custom-items/mana-items/zentrierer/rotate with storage elements_get_data
execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches 10.. if entity @s[predicate=!elements:sneaking,predicate=!elements:strg] run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Ausgerichtet! | 10 Mana verbraucht (Jetzt: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},{"text": ")"}]


execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches 10.. if entity @s[predicate=elements:sneaking,predicate=!elements:strg] run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Teleportiert! | 10 Mana verbraucht (Jetzt: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},{"text": ")"}]
execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches 10.. if entity @s[predicate=elements:sneaking,predicate=!elements:strg] at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~


execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches 10.. if entity @s[predicate=!elements:strg] run scoreboard players remove @s elements_mana_mana-count 10
execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches 10.. if entity @s[predicate=!elements:strg] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute if score @s elements_custom-items_item-click_cooldown matches 0 if score @s elements_mana_mana-count matches ..9 if entity @s[predicate=!elements:strg] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast zu wenig Mana! (Aktuell: ","color": "red"},{"score": {"name": "@s","objective": "elements_mana_mana-count"},"color": "red"},{"text": ")","color": "red"}]


execute if score @s elements_custom-items_item-click_cooldown matches 0 if entity @s[predicate=!elements:sneaking,predicate=elements:strg] run scoreboard players add @s elements_custom-items_zentrierer_rotation_lock 1
execute if score @s elements_custom-items_item-click_cooldown matches 0 if entity @s[predicate=!elements:sneaking,predicate=elements:strg] store result score @s elements_custom-items_zentrierer_rotation run data get entity @s Rotation[0] 100
execute if score @s elements_custom-items_zentrierer_rotation_lock matches 2.. run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Rotation Lock deaktiviert!"}]
execute if score @s elements_custom-items_zentrierer_rotation_lock matches 2.. run scoreboard players set @s elements_custom-items_zentrierer_rotation_lock 0

scoreboard players set @s elements_custom-items_item-click_cooldown 2