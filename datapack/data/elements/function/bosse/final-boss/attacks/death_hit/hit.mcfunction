execute as @e[tag=final-boss_boss] at @s run tellraw @a[distance=0..] ["",{"text": "[Warden] Server: ","color": "yellow"},{"text": "Der Warden hat seinen mächtigen Angriff gemacht!","color": "white"}]

execute as @e[tag=final-boss_boss] at @s as @a[distance=..7] run damage @s 2000 elements:boss_final
execute as @e[tag=final-boss_boss] at @s run particle sonic_boom ~ ~ ~ 5 5 5 0 1000 force