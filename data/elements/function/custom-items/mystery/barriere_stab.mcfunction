advancement revoke @s only elements:items/mystery/barriere_stab

execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=..199}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=..199}] run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast keine 200 Mana","color": "red"},{"text": " (Aktuell: ","color": "red"},{"score": {"name": "@s","objective": "elements_mana_mana-count"},"color": "red"},{"text": ")","color": "red"}]
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=200..}] at @s run effect give @s resistance 2 255 false
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=200..}] at @s run function elements:custom-items/mystery/barriere_stab_particle/start
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=200..}] at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 100 0
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=200..}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=200..}] run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "200 Mana verbraucht (Jetzt: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},{"text": ")"}]
execute as @s[scores={elements_custom-items_mystery_barriere-stab_cooldown=0,elements_mana_mana-count=200..}] run scoreboard players remove @s elements_mana_mana-count 200


scoreboard players set @s elements_custom-items_mystery_barriere-stab_cooldown 2