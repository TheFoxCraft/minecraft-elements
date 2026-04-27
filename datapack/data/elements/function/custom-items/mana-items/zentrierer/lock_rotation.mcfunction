scoreboard players add @s elements_custom-items_zentrierer_rotation_lock_mana_timer 1


execute if score @s elements_custom-items_zentrierer_rotation_lock_mana_timer matches 10.. run scoreboard players remove @s elements_mana_mana-count 1
execute if score @s elements_custom-items_zentrierer_rotation_lock_mana_timer matches 10.. run scoreboard players remove @s elements_custom-items_zentrierer_rotation_lock_mana_timer 10

execute if score @s elements_sonstiges_actionbar_pause matches 0 run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Rotation Lock aktiv! (Mana verbleibend: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},{"text": ")"}]


execute if score @s elements_mana_mana-count matches ..0 run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast keine Mana mehr! Rotation Lock abgebrochen!"}]
execute if score @s elements_mana_mana-count matches ..0 run scoreboard players set @s elements_custom-items_zentrierer_rotation_lock 0

execute store result storage elements_get_data rotation float 0.01 run scoreboard players get @s elements_custom-items_zentrierer_rotation
function elements:custom-items/mana-items/zentrierer/rotate with storage elements_get_data