# current status: 0


## example


#update server
#execute if score .server elements_update_sequence_status matches 0 run say (Hier dann neue default-values setzen)
# ..

execute if score .server elements_update_sequence_status matches 0 run scoreboard players set .server elements_update_sequence_status 1


execute if score .server elements_update_sequence_status matches 1 run scoreboard players set .server elements_update_sequence_status 2

#update and notify client
#1.0.0.1
execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.0.1","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.0.1","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run tellraw @s ["",{"text": "- Basalt und Stein kann jetzt auch beim Steinmetz-Goal abgegeben werden"}]
# ..
#execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run scoreboard players set @s elements_update_sequence_status 1


#1.0.0.2
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.0.2","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.0.2","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run tellraw @s ["",{"text": "- Kleine Bug-Fixes"}]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run tellraw @s ["",{"text": "- Abgabe-Goals angepasst (Preise stark erhöht)"}]
# ..
#execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run scoreboard players set @s elements_update_sequence_status 2




#change status in startup settings, update load