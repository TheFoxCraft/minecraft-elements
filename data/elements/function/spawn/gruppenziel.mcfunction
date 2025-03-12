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



execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_wood_level matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_wood_level_goal
execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_wood_level matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_wood_level_progress

execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_wood matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_goal = .server elements_abgabe_stage_wood_goal
execute if score .server elements_stage matches 1 if score .server elements_abgabe_stage_wood matches 1 run scoreboard players operation .server elements_abgabe_gruppenziel_progress = .server elements_abgabe_stage_wood_progress