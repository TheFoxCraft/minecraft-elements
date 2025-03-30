
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] run scoreboard players add @s elements_miningxp_foresting_xp 3
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..,elements_custom-items_shop_foraging-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_counter 1
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s store result score @s elements_miningxp_foresting_loot run random value 1..20
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s store result score @s elements_miningxp_foresting_loot run random value 21..40
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s store result score @s elements_miningxp_foresting_loot run random value 41..60
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s store result score @s elements_miningxp_foresting_loot run random value 61..80
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s store result score @s elements_miningxp_foresting_loot run random value 81..100
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..,elements_miningxp_foresting_level=..99}] run title @s actionbar ["",{"text":"🪓 Foraging: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..,elements_miningxp_foresting_level=100}] run title @s actionbar ["",{"text":"🪓 Foraging: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] run scoreboard players remove @s elements_miningxp_foresting_mine-get_spruce 1

execute as @a[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players add @s elements_miningxp_foresting_xp 3
execute as @a[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_counter 3

execute as @a[scores={elements_miningxp_foresting_level=0}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 50
execute as @a[scores={elements_miningxp_foresting_level=1}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 100
execute as @a[scores={elements_miningxp_foresting_level=2}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 200
execute as @a[scores={elements_miningxp_foresting_level=3}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 300
execute as @a[scores={elements_miningxp_foresting_level=4}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 400
execute as @a[scores={elements_miningxp_foresting_level=5}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 500
execute as @a[scores={elements_miningxp_foresting_level=6}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 600
execute as @a[scores={elements_miningxp_foresting_level=7}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 700
execute as @a[scores={elements_miningxp_foresting_level=8}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 800
execute as @a[scores={elements_miningxp_foresting_level=9}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 900
execute as @a[scores={elements_miningxp_foresting_level=10}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 1000
execute as @a[scores={elements_miningxp_foresting_level=11}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 1500
execute as @a[scores={elements_miningxp_foresting_level=12}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 2000
execute as @a[scores={elements_miningxp_foresting_level=13}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 2500
execute as @a[scores={elements_miningxp_foresting_level=14}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 3000
execute as @a[scores={elements_miningxp_foresting_level=15}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 3500
execute as @a[scores={elements_miningxp_foresting_level=16}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 4000
execute as @a[scores={elements_miningxp_foresting_level=17}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 4500
execute as @a[scores={elements_miningxp_foresting_level=18}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 5000
execute as @a[scores={elements_miningxp_foresting_level=19}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 5500
execute as @a[scores={elements_miningxp_foresting_level=20}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 6000
execute as @a[scores={elements_miningxp_foresting_level=21}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 6500
execute as @a[scores={elements_miningxp_foresting_level=22}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 7000
execute as @a[scores={elements_miningxp_foresting_level=23}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 7500
execute as @a[scores={elements_miningxp_foresting_level=24}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 8000
execute as @a[scores={elements_miningxp_foresting_level=25}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 8500
execute as @a[scores={elements_miningxp_foresting_level=26}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 9000
execute as @a[scores={elements_miningxp_foresting_level=27}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 9500
execute as @a[scores={elements_miningxp_foresting_level=28}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 10000
execute as @a[scores={elements_miningxp_foresting_level=29}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 12000
execute as @a[scores={elements_miningxp_foresting_level=30}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 14000
execute as @a[scores={elements_miningxp_foresting_level=31}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 16000
execute as @a[scores={elements_miningxp_foresting_level=32}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 18000
execute as @a[scores={elements_miningxp_foresting_level=33}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 20000
execute as @a[scores={elements_miningxp_foresting_level=34}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 22000
execute as @a[scores={elements_miningxp_foresting_level=35}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 24000
execute as @a[scores={elements_miningxp_foresting_level=36}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 26000
execute as @a[scores={elements_miningxp_foresting_level=37}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 28000
execute as @a[scores={elements_miningxp_foresting_level=38}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 30000
execute as @a[scores={elements_miningxp_foresting_level=39}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 32000
execute as @a[scores={elements_miningxp_foresting_level=40}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 34000
execute as @a[scores={elements_miningxp_foresting_level=41}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 36000
execute as @a[scores={elements_miningxp_foresting_level=42}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 38000
execute as @a[scores={elements_miningxp_foresting_level=43}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 40000
execute as @a[scores={elements_miningxp_foresting_level=44}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 42000
execute as @a[scores={elements_miningxp_foresting_level=45}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 44000
execute as @a[scores={elements_miningxp_foresting_level=46}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 46000
execute as @a[scores={elements_miningxp_foresting_level=47}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 48000
execute as @a[scores={elements_miningxp_foresting_level=48}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 50000
execute as @a[scores={elements_miningxp_foresting_level=49}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 60000
execute as @a[scores={elements_miningxp_foresting_level=50}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 70000
execute as @a[scores={elements_miningxp_foresting_level=51}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 80000
execute as @a[scores={elements_miningxp_foresting_level=52}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 90000
execute as @a[scores={elements_miningxp_foresting_level=53}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 100000
execute as @a[scores={elements_miningxp_foresting_level=54}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 120000
execute as @a[scores={elements_miningxp_foresting_level=55}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 140000
execute as @a[scores={elements_miningxp_foresting_level=56}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 160000
execute as @a[scores={elements_miningxp_foresting_level=57}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 180000
execute as @a[scores={elements_miningxp_foresting_level=58}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 200000
execute as @a[scores={elements_miningxp_foresting_level=59}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 220000
execute as @a[scores={elements_miningxp_foresting_level=60}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 240000
execute as @a[scores={elements_miningxp_foresting_level=61}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 260000
execute as @a[scores={elements_miningxp_foresting_level=62}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 280000
execute as @a[scores={elements_miningxp_foresting_level=63}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 300000
execute as @a[scores={elements_miningxp_foresting_level=64}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 320000
execute as @a[scores={elements_miningxp_foresting_level=65}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 340000
execute as @a[scores={elements_miningxp_foresting_level=66}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 360000
execute as @a[scores={elements_miningxp_foresting_level=67}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 380000
execute as @a[scores={elements_miningxp_foresting_level=68}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 400000
execute as @a[scores={elements_miningxp_foresting_level=69}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 420000
execute as @a[scores={elements_miningxp_foresting_level=70}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 440000
execute as @a[scores={elements_miningxp_foresting_level=71}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 460000
execute as @a[scores={elements_miningxp_foresting_level=72}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 480000
execute as @a[scores={elements_miningxp_foresting_level=73}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 500000
execute as @a[scores={elements_miningxp_foresting_level=74}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 520000
execute as @a[scores={elements_miningxp_foresting_level=75}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 540000
execute as @a[scores={elements_miningxp_foresting_level=76}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 560000
execute as @a[scores={elements_miningxp_foresting_level=77}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 580000
execute as @a[scores={elements_miningxp_foresting_level=78}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 600000
execute as @a[scores={elements_miningxp_foresting_level=79}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 620000
execute as @a[scores={elements_miningxp_foresting_level=80}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 640000
execute as @a[scores={elements_miningxp_foresting_level=81}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 660000
execute as @a[scores={elements_miningxp_foresting_level=82}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 680000
execute as @a[scores={elements_miningxp_foresting_level=83}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 700000
execute as @a[scores={elements_miningxp_foresting_level=84}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 720000
execute as @a[scores={elements_miningxp_foresting_level=85}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 740000
execute as @a[scores={elements_miningxp_foresting_level=86}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 760000
execute as @a[scores={elements_miningxp_foresting_level=87}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 780000
execute as @a[scores={elements_miningxp_foresting_level=88}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 800000
execute as @a[scores={elements_miningxp_foresting_level=89}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 820000
execute as @a[scores={elements_miningxp_foresting_level=90}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 840000
execute as @a[scores={elements_miningxp_foresting_level=91}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 860000
execute as @a[scores={elements_miningxp_foresting_level=92}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 880000
execute as @a[scores={elements_miningxp_foresting_level=93}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 900000
execute as @a[scores={elements_miningxp_foresting_level=94}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 920000
execute as @a[scores={elements_miningxp_foresting_level=95}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 940000
execute as @a[scores={elements_miningxp_foresting_level=96}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 960000
execute as @a[scores={elements_miningxp_foresting_level=97}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 980000
execute as @a[scores={elements_miningxp_foresting_level=98}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 990000
execute as @a[scores={elements_miningxp_foresting_level=99}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 1000000
execute as @a[scores={elements_miningxp_foresting_level=100}] run scoreboard players set @s elements_miningxp_foresting_nextlevel 100000000


execute as @a if score @s elements_miningxp_foresting_xp >= @s elements_miningxp_foresting_nextlevel unless score @s elements_miningxp_foresting_level matches 100.. run scoreboard players add @s elements_miningxp_foresting_level 1
execute as @a if score @s elements_miningxp_foresting_xp >= @s elements_miningxp_foresting_nextlevel unless score @s elements_miningxp_foresting_level matches 101.. at @s run playsound minecraft:block.beacon.activate master @s
execute as @a if score @s elements_miningxp_foresting_xp >= @s elements_miningxp_foresting_nextlevel unless score @s elements_miningxp_foresting_level matches 101.. run scoreboard players add @s elements_mana_mana-max 10
execute as @a if score @s elements_miningxp_foresting_xp >= @s elements_miningxp_foresting_nextlevel unless score @s elements_miningxp_foresting_level matches 101.. run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text":"Du bist im Foraging-Level aufgestiegen: Level "},{"score":{"name":"@s","objective":"elements_miningxp_foresting_level"}}]
execute as @a[scores={elements_miningxp_foresting_level=100}] if score @s elements_miningxp_foresting_xp >= @s elements_miningxp_foresting_nextlevel unless score @s elements_miningxp_foresting_level matches 101.. run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text":"Herzlichen Glückwünsch!","color":"gold"},"\n",{"text":"Du hast das Maximale Foraging-Level erreicht!","color":"gold"}]

