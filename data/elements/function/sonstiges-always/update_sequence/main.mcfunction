# current status: 0


## example


#update server
#execute if score .server elements_update_sequence_status matches 0 run say (Hier dann neue default-values setzen)
## ..
#
#execute if score .server elements_update_sequence_status matches 0 run scoreboard players set .server elements_update_sequence_status 1


#update and notify client
#execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run title @s title ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},"- ",{"text": "[","color": "gray"},{"text": "UPDATE","color": "green"},{"text": "] ","color": "gray"}]
#execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run title @s subtitle ["",{"text": "[","color": "gray"},{"text": "v1.0.1","color": "green"},{"text": "] ","color": "gray"}]
#execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run tellraw @s ["","\n","\n","\n","\n","\n",{"text": "[","color": "gray"},{"text": "ELEMENTS","color": "light_purple"},{"text": "] ","color": "gray"},"- ",{"text": "[","color": "gray"},{"text": "UPDATE","color": "green"},{"text": "] ","color": "gray"},"- ",{"text": "[","color": "gray"},{"text": "v1.0.1","color": "green"},{"text": "] ","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
#execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run tellraw @s ["",{"text": "- Absolut Garnix (Hier dann neue Sachen reinschreiben)"}]
## ..
#execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run say (Hier dann neue default-values setzen)
## ..
#
#execute as @a[scores={elements_update_sequence_status=0}] if score .server elements_update_sequence_status matches 1.. run scoreboard players set @s elements_update_sequence_status 1