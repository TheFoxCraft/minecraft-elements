advancement revoke @s only elements:items/mystery/tp_schwert

execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0},gamemode=adventure] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0},gamemode=adventure] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0},gamemode=adventure] run title @s actionbar ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du kannst das hier nicht verwenden!","color": "red"}]
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=..9},gamemode=!adventure] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=..9},gamemode=!adventure] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=..9},gamemode=!adventure] run title @s actionbar ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du hast keine 10 Mana","color": "red"},{"text": " (Aktuell: ","color": "red"},{"score": {"name": "@s","objective": "elements_mana_mana-count"},"color": "red"},{"text": ")","color": "red"}]
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=10..},gamemode=!adventure] at @s rotated as @s run tp @s ^ ^ ^15
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=10..},gamemode=!adventure] at @s run playsound entity.player.teleport master @s ~ ~ ~ 100 0
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=10..},gamemode=!adventure] at @s run effect give @s slow_falling 2 128 false
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=10..},gamemode=!adventure] run scoreboard players set @s elements_sonstiges_actionbar_pause 15
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=10..},gamemode=!adventure] run title @s actionbar ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "10 Mana verbraucht (Jetzt: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},{"text": ")"}]
execute as @s[scores={elements_custom-items_mystery_tp-schwert_cooldown=0,elements_mana_mana-count=10..},gamemode=!adventure] run scoreboard players remove @s elements_mana_mana-count 10


scoreboard players set @s elements_custom-items_mystery_tp-schwert_cooldown 2