# current status: 0


## example


#update server
#execute if score .server elements_update_sequence_status matches 0 run say (Hier dann neue default-values setzen)
# ..

execute if score .server elements_update_sequence_status matches 0 run scoreboard players set .server elements_update_sequence_status 1




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

execute if score .server elements_update_sequence_status matches 1 run scoreboard players set .server elements_update_sequence_status 2
#execute if score .server elements_update_sequence_status matches 1 run say (Hier dann neue default-values setzen)

execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.0.2","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.0.2","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run tellraw @s ["",{"text": "- Kleine Bug-Fixes"}]
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run tellraw @s ["",{"text": "- Abgabe-Goals angepasst (Preise stark erhöht)"}]
# ..
#execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=1}] if score .server elements_update_sequence_status matches 2.. run scoreboard players set @s elements_update_sequence_status 2


#1.0.1.0

execute if score .server elements_update_sequence_status matches 2 run scoreboard players set .server elements_update_sequence_status 3
#execute if score .server elements_update_sequence_status matches 2 run say (Hier dann neue default-values setzen)

execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.1.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.0.1.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run tellraw @s ["",{"text": "- Creditsbar ist jetzt Deaktivierbar"}]
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run tellraw @s ["",{"text": "- Für jede Dimension kann man jetzt die Teleport-Rotation einstellen"}]
# ..
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_settings_credits 3
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_enderchest_settings_rotation_nether 0
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_enderchest_settings_rotation_stone 0
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_enderchest_settings_rotation_nether 0
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_enderchest_settings_rotation_ocean 0
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_enderchest_settings_rotation_hub 0
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_enderchest_settings_interface 1

#execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=2}] if score .server elements_update_sequence_status matches 3.. run scoreboard players set @s elements_update_sequence_status 3

#1.0.1.0


execute if score .server elements_update_sequence_status matches 3 run scoreboard players set .server elements_uniqueitem_collections_auf_log 0
execute if score .server elements_update_sequence_status matches 3 run scoreboard players set .server elements_uniqueitem_ork_schatz 0
#execute if score .server elements_update_sequence_status matches 3 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 3 run scoreboard players set .server elements_update_sequence_status 4


execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.2.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.2.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run tellraw @s ["",{"text": "Changelog ist im Discord verfügbar"}]
# ..
execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run scoreboard players set @s elements_uniqueitem_collections_auf_log 0
execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run scoreboard players set @s elements_uniqueitem_ork_schatz 0


#execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=3}] if score .server elements_update_sequence_status matches 4.. run scoreboard players set @s elements_update_sequence_status 4


#1.3.0.0

execute if score .server elements_update_sequence_status matches 4 run scoreboard players set .server elements_update_sequence_status 5
#execute if score .server elements_update_sequence_status matches 4 run say (Hier dann neue default-values setzen)

execute as @a[scores={elements_update_sequence_status=4}] if score .server elements_update_sequence_status matches 5.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=4}] if score .server elements_update_sequence_status matches 5.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.3.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=4}] if score .server elements_update_sequence_status matches 5.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.3.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=4}] if score .server elements_update_sequence_status matches 5.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..
#execute as @a[scores={elements_update_sequence_status=4}] if score .server elements_update_sequence_status matches 5.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=4}] if score .server elements_update_sequence_status matches 5.. run scoreboard players set @s elements_update_sequence_status 5

#1.3.3.0

execute if score .server elements_update_sequence_status matches 5 run scoreboard players set .server elements_uniqueitem_wanderlachs 0
execute if score .server elements_update_sequence_status matches 5 run scoreboard players set .server elements_uniqueitem_fragment_der_himmelswarze 0
execute if score .server elements_update_sequence_status matches 5 run scoreboard players set .server elements_uniqueitem_collections_bug_abuser 0
#execute if score .server elements_update_sequence_status matches 5 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 5 run scoreboard players set .server elements_update_sequence_status 6


execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.4.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.4.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..
#execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run say (Hier dann neue default-values setzen)
execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run scoreboard players set @s elements_uniqueitem_wanderlachs 0
execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run scoreboard players set @s elements_uniqueitem_fragment_der_himmelswarze 0
execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run scoreboard players set @s elements_uniqueitem_collections_bug_abuser 0
# ..
execute as @a[scores={elements_update_sequence_status=5}] if score .server elements_update_sequence_status matches 6.. run scoreboard players set @s elements_update_sequence_status 6

#1.6.0.0


#execute if score .server elements_update_sequence_status matches 6 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 6 run scoreboard players set .server elements_update_sequence_status 7


execute as @a[scores={elements_update_sequence_status=6}] if score .server elements_update_sequence_status matches 7.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=6}] if score .server elements_update_sequence_status matches 7.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.6.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=6}] if score .server elements_update_sequence_status matches 7.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.6.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=6}] if score .server elements_update_sequence_status matches 7.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..
#execute as @a[scores={elements_update_sequence_status=6}] if score .server elements_update_sequence_status matches 7.. run say (Hier dann neue default-values setzen)
execute as @a[scores={elements_update_sequence_status=6}] if score .server elements_update_sequence_status matches 7.. run scoreboard players set @s elements_enderchest_level_handelsplatz 0
# ..
execute as @a[scores={elements_update_sequence_status=6}] if score .server elements_update_sequence_status matches 7.. run scoreboard players set @s elements_update_sequence_status 7

#1.8.0.0

execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_abgabe_stage_4_gang_progress 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_abgabe_stage_4_progress 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_other_rolex 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_miningxp_digda_splitter 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_miningxp_sparks_papageienfeder 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_miningxp_nasser_klumpen 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_miningxp_honiggolem_elixir 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_bosse_taubenkacke 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_bosse_tomorrowland_karte 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_bosse_amboesse 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_shop_hasenpfote 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_shop_allium_ghg 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_shop_jos_stoff 0
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_uniqueitem_shop_mosh_pit 0

#execute if score .server elements_update_sequence_status matches 7 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 7 run scoreboard players set .server elements_update_sequence_status 8


execute as @a[scores={elements_update_sequence_status=7}] if score .server elements_update_sequence_status matches 8.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=7}] if score .server elements_update_sequence_status matches 8.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.8.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=7}] if score .server elements_update_sequence_status matches 8.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.8.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=7}] if score .server elements_update_sequence_status matches 8.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..
#execute as @a[scores={elements_update_sequence_status=7}] if score .server elements_update_sequence_status matches 8.. run say (Hier dann neue default-values setzen)

# ..
execute as @a[scores={elements_update_sequence_status=7}] if score .server elements_update_sequence_status matches 8.. run scoreboard players set @s elements_update_sequence_status 8


#1.9.0.0

execute if score .server elements_update_sequence_status matches 8 run scoreboard players set .server elements_recycler_stats_4_spawn 0
execute if score .server elements_update_sequence_status matches 8 run scoreboard players set .server elements_uniqueitem_collections_rute_der_zuechtigung 0
execute if score .server elements_update_sequence_status matches 8 run scoreboard players set .server elements_recycler_stats_4 0
#execute if score .server elements_update_sequence_status matches 8 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 8 run scoreboard players set .server elements_update_sequence_status 9


execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.9.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.9.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..
#execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run say (Hier dann neue default-values setzen)
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_villager_stage-4_farm-slots_level 0
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_casino_stats_game_double-or-nothing 0
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_villager_stage-4_mana_level 0
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_mana_item_schrumpfstab_stufe 1
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_collections_sweet_berries_collect 0
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_collections_stats_sweet_berries_total 0
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_collections_fish_collect 0

# ..
execute as @a[scores={elements_update_sequence_status=8}] if score .server elements_update_sequence_status matches 9.. run scoreboard players set @s elements_update_sequence_status 9


#1.10.0.0

execute if score .server elements_update_sequence_status matches 9 run scoreboard players set .server elements_uniqueitem_dornenherz_der_wildnis 0
execute if score .server elements_update_sequence_status matches 9 run scoreboard players set .server elements_uniqueitem_collections_elements_biscuit 0
#execute if score .server elements_update_sequence_status matches 9 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 9 run scoreboard players set .server elements_update_sequence_status 10


execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.10.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.10.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..
#execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run say (Hier dann neue default-values setzen)
execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run function elements:miningxp/fishingxp/set_goals
execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run scoreboard players set @s elements_settings_luckydrops_sound 1


# ..
execute as @a[scores={elements_update_sequence_status=9}] if score .server elements_update_sequence_status matches 10.. run scoreboard players set @s elements_update_sequence_status 10


#1.10.1.0

execute if score .server elements_update_sequence_status matches 10 run scoreboard players set .server elements_stage_4_portal_enable 0
execute if score .server elements_update_sequence_status matches 10 run scoreboard players set .server elements_stage_4_boss_status 0
execute if score .server elements_update_sequence_status matches 10 in elements:stage-4_bossroom run place template elements:boss_room/stage_4 -29 96 -27
#execute if score .server elements_update_sequence_status matches 10 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 10 run scoreboard players set .server elements_update_sequence_status 11


execute as @a[scores={elements_update_sequence_status=10}] if score .server elements_update_sequence_status matches 11.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=10}] if score .server elements_update_sequence_status matches 11.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.10.1.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=10}] if score .server elements_update_sequence_status matches 11.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.10.1.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=10}] if score .server elements_update_sequence_status matches 11.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..
#execute as @a[scores={elements_update_sequence_status=10}] if score .server elements_update_sequence_status matches 11.. run say (Hier dann neue default-values setzen)


# ..
execute as @a[scores={elements_update_sequence_status=10}] if score .server elements_update_sequence_status matches 11.. run scoreboard players set @s elements_update_sequence_status 11



#1.11.0.0




execute if score .server elements_update_sequence_status matches 11 run scoreboard players set .server elements_config_death_level_datenspeicher 50
execute if score .server elements_update_sequence_status matches 11 run scoreboard players set .server elements_abgabe_stage_5_progress 0
execute if score .server elements_update_sequence_status matches 11 run scoreboard players set .server elements_recycler_stats_5 0
execute if score .server elements_update_sequence_status matches 11 run scoreboard players set .server elements_recycler_stats_5_spawn 0
execute if score .server elements_update_sequence_status matches 11 run scoreboard players set .server elements_uniqueitem_melonengolemschale 0
#execute if score .server elements_update_sequence_status matches 11 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 11 run scoreboard players set .server elements_update_sequence_status 12



execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.11.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.11.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!\n Das ist neu:","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..

execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run scoreboard players set @s elements_farm-slots_stage-5_max-slots 0
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run scoreboard players set @s elements_farm-slots_stage-5_slots 0
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run scoreboard players set @s elements_villager_stage-5_farm-slots_level 0
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run scoreboard players set @s elements_villager_stage-5_mana_level 0
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run scoreboard players set @s elements_collections_melon_collect 0
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run scoreboard players set @s elements_collections_stats_melon_total 0
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. if score @s elements_villager_stage-3_mana_level matches 3 run scoreboard players set @s elements_villager_stage-3_mana_level 4

#execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=11}] if score .server elements_update_sequence_status matches 12.. run scoreboard players set @s elements_update_sequence_status 12




#1.11.2.0

execute if score .server elements_update_sequence_status matches 12 run scoreboard players set .server elements_stage_5_portal_enable 0
execute if score .server elements_update_sequence_status matches 12 run scoreboard players set .server elements_stage_5_boss_status 0
execute if score .server elements_update_sequence_status matches 12 run scoreboard players set .server elements_stage_5_boss_melee_timer 0
execute if score .server elements_update_sequence_status matches 12 in elements:stage-5_bossroom run place template elements:boss_room/stage_5 -50 82 -49
#execute if score .server elements_update_sequence_status matches 12 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 12 run scoreboard players set .server elements_update_sequence_status 13



execute as @a[scores={elements_update_sequence_status=12}] if score .server elements_update_sequence_status matches 13.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=12}] if score .server elements_update_sequence_status matches 13.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.11.2.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=12}] if score .server elements_update_sequence_status matches 13.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.11.2.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=12}] if score .server elements_update_sequence_status matches 13.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..


#execute as @a[scores={elements_update_sequence_status=12}] if score .server elements_update_sequence_status matches 13.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=12}] if score .server elements_update_sequence_status matches 13.. run scoreboard players set @s elements_update_sequence_status 13



#1.12.0.0

execute if score .server elements_update_sequence_status matches 13 run scoreboard players set .server elements_uniqueitem_bosse_schleimiger_popel 0
execute if score .server elements_update_sequence_status matches 13 run scoreboard players set .server elements_uniqueitem_other_kaktus_koenig_abfall 0
execute if score .server elements_update_sequence_status matches 13 run scoreboard players set .server elements_uniqueitem_collections_geroestete_melon_seeds 0
execute if score .server elements_update_sequence_status matches 13 run scoreboard players set .server elements_recycler_stats_6 0
execute if score .server elements_update_sequence_status matches 13 run scoreboard players set .server elements_recycler_stats_6_spawn 0
execute if score .server elements_update_sequence_status matches 13 run scoreboard players set .server elements_abgabe_stage_6_progress 0
#execute if score .server elements_update_sequence_status matches 13 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 13 run scoreboard players set .server elements_update_sequence_status 14



execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.12.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.12.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..


#execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run say (Hier dann neue default-values setzen)
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run scoreboard players set @s elements_farm-slots_stage-6_slots 0
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run scoreboard players set @s elements_farm-slots_stage-6_max-slots 0
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run scoreboard players set @s elements_collections_cocoa_collect 0
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run scoreboard players set @s elements_collections_stats_cocoa_total 0
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run scoreboard players set @s elements_villager_stage-6_farm-slots_level 0
# ..
execute as @a[scores={elements_update_sequence_status=13}] if score .server elements_update_sequence_status matches 14.. run scoreboard players set @s elements_update_sequence_status 14




#1.12.1.0

execute if score .server elements_update_sequence_status matches 14 run scoreboard players set .server elements_stage_6_portal_enable 0
execute if score .server elements_update_sequence_status matches 14 run scoreboard players set .server elements_stage_6_boss_status 0
execute if score .server elements_update_sequence_status matches 14 run scoreboard players set .server elements_stage_6_boss_melee_timer 0
execute if score .server elements_update_sequence_status matches 14 run scoreboard players set .server elements_uniqueitem_kakao_pulver 0
execute if score .server elements_update_sequence_status matches 14 run scoreboard players set .server elements_uniqueitem_bosse_dragon_egg 0
execute if score .server elements_update_sequence_status matches 14 in elements:stage-6_bossroom run place template elements:boss_room/stage_6 -20 97 -21
#execute if score .server elements_update_sequence_status matches 14 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 14 run scoreboard players set .server elements_update_sequence_status 15



execute as @a[scores={elements_update_sequence_status=14}] if score .server elements_update_sequence_status matches 15.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=14}] if score .server elements_update_sequence_status matches 15.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.12.1.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=14}] if score .server elements_update_sequence_status matches 15.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.12.1.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=14}] if score .server elements_update_sequence_status matches 15.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..


execute as @a[scores={elements_update_sequence_status=14}] if score .server elements_update_sequence_status matches 15.. run scoreboard players set @s elements_villager_stage-6_mana_level 0
#execute as @a[scores={elements_update_sequence_status=14}] if score .server elements_update_sequence_status matches 15.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=14}] if score .server elements_update_sequence_status matches 15.. run scoreboard players set @s elements_update_sequence_status 15


#1.13.0.0
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_final-boss_portal_enable 0
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_final-boss_boss_status 0
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_final-boss_boss_melee_timer 0
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_abgabe_final-boss_gang_progress 0
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_abgabe_final-boss_room_progress 0
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_projectFinished 0
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_uniqueitem_bosse_riesen_warden_fetzen 0
#execute if score .server elements_update_sequence_status matches 15 run say (Hier dann neue default-values setzen)
execute if score .server elements_update_sequence_status matches 15 run scoreboard players set .server elements_update_sequence_status 16



execute as @a[scores={elements_update_sequence_status=15}] if score .server elements_update_sequence_status matches 16.. run title @s title ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=15}] if score .server elements_update_sequence_status matches 16.. run title @s subtitle ["",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.13.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"}]
execute as @a[scores={elements_update_sequence_status=15}] if score .server elements_update_sequence_status matches 16.. run tellraw @s ["","\n","\n","\n","\n","\n",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "UPDATE","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"- ",{"translate":"elements.main.other.[","color": "gray"},{"text": "v1.13.0.0","color": "green"},{"translate":"elements.main.other.]","color": "gray"},"\n","\n",{"text": "Seit du das letzte mal online warst gab es ein Update!","color": "green"},"\n"]
execute as @a[scores={elements_update_sequence_status=15}] if score .server elements_update_sequence_status matches 16.. run tellraw @s ["",{"text": "Changelog im Discord"}]

# ..


execute as @a[scores={elements_update_sequence_status=15}] if score .server elements_update_sequence_status matches 16.. run scoreboard players set @s elements_villager_final-boss_intro_level 0
#execute as @a[scores={elements_update_sequence_status=15}] if score .server elements_update_sequence_status matches 16.. run say (Hier dann neue default-values setzen)
# ..
execute as @a[scores={elements_update_sequence_status=15}] if score .server elements_update_sequence_status matches 16.. run scoreboard players set @s elements_update_sequence_status 16



#change status in startup settings, update load



