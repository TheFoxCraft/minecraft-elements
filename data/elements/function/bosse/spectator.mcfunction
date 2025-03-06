title @s actionbar ["",{"text": "Du bist Zuschauer!","color": "green"},{"text": " Nutze \"/trigger leave\" zum Verlassen!","color": "gray"}]

scoreboard players enable @s leave

execute as @s[scores={leave=1..}] in elements:hub run tp @s 0 101 0
execute as @s[scores={leave=1..}] run tag @s remove elements_boss_spectator
execute as @s[scores={leave=1..}] run gamemode adventure @s
execute as @s[scores={leave=1}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Zuschauermodus verlassen."}]
execute as @s[scores={leave=1..}] run scoreboard players set @s leave 0