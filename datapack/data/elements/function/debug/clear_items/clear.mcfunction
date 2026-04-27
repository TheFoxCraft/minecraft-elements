
execute store result score .server elements_debug_clear-items run kill @e[type=item]
tellraw @a ["",{"text": "Server: ","color": "yellow"},{"text": "Es wurden ","color": "red"},{"score": {"name": ".server","objective": "elements_debug_clear-items"}},{"text": " Items gelöscht.","color": "red"}]