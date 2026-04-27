tellraw @a ["",{"text": "Server: "},{"text": "Der Warden wurde besiegt! Das Projekt ist damit offiziell Beendet!"}]
title @a title {"text": "Der Warden wurde besiegt!","color": "gold"}
title @a subtitle {"text": "Das Projekt ist Beendet!","color": "gold"}

# activate energiekern
scoreboard players set .server elements_spawn_energiekern-activate 2

execute in elements:ocean run gamerule randomTickSpeed 6
execute in elements:sky run gamerule randomTickSpeed 6
execute in elements:stone run gamerule randomTickSpeed 6
execute in elements:nether run gamerule randomTickSpeed 6


scoreboard players set .server elements_projectFinished 1