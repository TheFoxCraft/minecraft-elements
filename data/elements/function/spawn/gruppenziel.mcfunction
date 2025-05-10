execute if score .server elements_abgabe_gruppenziel_goal matches 1.. run bossbar set elements:gruppenziel_total name ["",{"text":"Gruppenziel: ","color":"white"},{"score":{"name":".server","objective":"elements_abgabe_gruppenziel_progress"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":".server","objective":"elements_abgabe_gruppenziel_goal"},"color":"white"}]
execute if score .server elements_abgabe_gruppenziel_goal matches 0 run bossbar set elements:gruppenziel_total name {"text": "Aktuell gibt es kein Gruppenziel","color": "white"}
execute store result bossbar elements:gruppenziel_total max run scoreboard players get .server elements_abgabe_gruppenziel_goal
execute store result bossbar elements:gruppenziel_total value run scoreboard players get .server elements_abgabe_gruppenziel_progress
execute if score .server elements_abgabe_gruppenziel_goal matches 1.. run bossbar set elements:gruppenziel_hub name ["",{"text":"Gruppenziel: ","color":"white"},{"score":{"name":".server","objective":"elements_abgabe_gruppenziel_progress"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":".server","objective":"elements_abgabe_gruppenziel_goal"},"color":"white"}]
execute if score .server elements_abgabe_gruppenziel_goal matches 0 run bossbar set elements:gruppenziel_hub name {"text": "Aktuell gibt es kein Gruppenziel","color": "white"}
execute store result bossbar elements:gruppenziel_hub max run scoreboard players get .server elements_abgabe_gruppenziel_goal
execute store result bossbar elements:gruppenziel_hub value run scoreboard players get .server elements_abgabe_gruppenziel_progress

scoreboard players set .server elements_abgabe_gruppenziel_goal 0
scoreboard players set .server elements_abgabe_gruppenziel_progress 0


# stage 2 gang
execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_2_gang matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_2_gang_goal
execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_2_gang matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_2_gang_progress

# stage 2 final room
execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_2 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_2_goal
execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_2 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_2_progress

# stage 3 final room
execute if score .server elements_stage matches 2 if score .server elements_abgabe_stage_3 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_3_goal
execute if score .server elements_stage matches 2 if score .server elements_abgabe_stage_3 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_3_progress

# stage 4 gang
execute if score .server elements_stage matches 3 if score .server elements_abgabe_stage_4_gang matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_4_gang_goal
execute if score .server elements_stage matches 3 if score .server elements_abgabe_stage_4_gang matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_4_gang_progress

# stage 4 final room
execute if score .server elements_stage matches 3 if score .server elements_abgabe_stage_4 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_4_goal
execute if score .server elements_stage matches 3 if score .server elements_abgabe_stage_4 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_4_progress

# stage 5 final room
execute if score .server elements_stage matches 4 if score .server elements_abgabe_stage_5 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_5_goal
execute if score .server elements_stage matches 4 if score .server elements_abgabe_stage_5 matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_5_progress