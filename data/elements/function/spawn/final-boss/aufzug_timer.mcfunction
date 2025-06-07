execute if score @s elements_final-boss_aufzug_cooldown matches 1..99 run title @s times 0 40 0
execute if score @s elements_final-boss_aufzug_cooldown matches 1 run title @s title "Die Fahrt beginnt in"
execute if score @s elements_final-boss_aufzug_cooldown matches 1 run title @s subtitle "5s"
execute if score @s elements_final-boss_aufzug_cooldown matches 21 run title @s title "Die Fahrt beginnt in"
execute if score @s elements_final-boss_aufzug_cooldown matches 21 run title @s subtitle "4s"
execute if score @s elements_final-boss_aufzug_cooldown matches 41 run title @s title "Die Fahrt beginnt in"
execute if score @s elements_final-boss_aufzug_cooldown matches 41 run title @s subtitle "3s"
execute if score @s elements_final-boss_aufzug_cooldown matches 61 run title @s title "Die Fahrt beginnt in"
execute if score @s elements_final-boss_aufzug_cooldown matches 61 run title @s subtitle "2s"
execute if score @s elements_final-boss_aufzug_cooldown matches 81 run title @s title "Die Fahrt beginnt in"
execute if score @s elements_final-boss_aufzug_cooldown matches 81 run title @s subtitle "1s"


execute if score @s elements_final-boss_aufzug_cooldown matches 100 at @s run playsound minecraft:entity.minecart.inside master @s ~ ~ ~ 1 0.5
execute if score @s elements_final-boss_aufzug_cooldown matches 100 run title @s times 0 210 70
execute if score @s elements_final-boss_aufzug_cooldown matches 100 run title @s subtitle {"text":"\uE918"}
execute if score @s elements_final-boss_aufzug_cooldown matches 100 run title @s title {"text":"Aufzug fährt..."}

execute if score @s elements_final-boss_aufzug_cooldown matches 100 at @s if entity @s[x=-1,y=99,z=93,dx=3,dy=3,dz=3] run tag @s add aufzug_down
execute if score @s elements_final-boss_aufzug_cooldown matches 100 at @s if entity @s[x=-1,y=99,z=93,dx=3,dy=3,dz=3] run tag @s remove aufzug_up
execute if score @s elements_final-boss_aufzug_cooldown matches 100 at @s if entity @s[x=-1,y=49,z=93,dx=3,dy=3,dz=3] run tag @s add aufzug_up
execute if score @s elements_final-boss_aufzug_cooldown matches 100 at @s if entity @s[x=-1,y=49,z=93,dx=3,dy=3,dz=3] run tag @s remove aufzug_down
execute if score @s elements_final-boss_aufzug_cooldown matches 100 at @s if entity @s[tag=aufzug_down] run tp @s 0.5 50.00 94.5 180 0
execute if score @s elements_final-boss_aufzug_cooldown matches 100 at @s if entity @s[tag=aufzug_up] run tp @s 0.5 100.00 94.5 180 0