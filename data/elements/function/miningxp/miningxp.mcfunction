
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] run scoreboard players add @s elements_miningxp_mining_xp 1
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..,elements_custom-items_shop_mining-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_mining-frucht_counter 1
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 1..20
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 21..40
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 41..60
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 61..80
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 81..100
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..,elements_miningxp_mining_level=..99}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..,elements_miningxp_mining_level=100}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] run scoreboard players remove @s elements_miningxp_mining_mine-get_stone 1

execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] run scoreboard players add @s elements_miningxp_mining_xp 1
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..,elements_custom-items_shop_mining-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_mining-frucht_counter 1
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 1..20
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 21..40
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 41..60
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 61..80
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 81..100
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..,elements_miningxp_mining_level=..99}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..,elements_miningxp_mining_level=100}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] run scoreboard players remove @s elements_miningxp_mining_mine-get_cobblestone 1

execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] run scoreboard players add @s elements_miningxp_mining_xp 1
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..,elements_custom-items_shop_mining-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_mining-frucht_counter 1
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 1..20
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 21..40
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 41..60
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 61..80
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s store result score @s elements_miningxp_mining_loot run random value 81..100
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..,elements_miningxp_mining_level=..99}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..,elements_miningxp_mining_level=100}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] run scoreboard players remove @s elements_miningxp_mining_mine-get_basalt 1

execute as @a[scores={elements_custom-items_shop_mining-frucht_counter=3..}] run scoreboard players add @s elements_miningxp_mining_xp 1
execute as @a[scores={elements_custom-items_shop_mining-frucht_counter=3..}] run scoreboard players remove @s elements_custom-items_shop_mining-frucht_counter 3



execute as @a[scores={elements_miningxp_mining_level=0}] run scoreboard players set @s elements_miningxp_mining_nextlevel 50
execute as @a[scores={elements_miningxp_mining_level=1}] run scoreboard players set @s elements_miningxp_mining_nextlevel 100
execute as @a[scores={elements_miningxp_mining_level=2}] run scoreboard players set @s elements_miningxp_mining_nextlevel 200
execute as @a[scores={elements_miningxp_mining_level=3}] run scoreboard players set @s elements_miningxp_mining_nextlevel 300
execute as @a[scores={elements_miningxp_mining_level=4}] run scoreboard players set @s elements_miningxp_mining_nextlevel 400
execute as @a[scores={elements_miningxp_mining_level=5}] run scoreboard players set @s elements_miningxp_mining_nextlevel 500
execute as @a[scores={elements_miningxp_mining_level=6}] run scoreboard players set @s elements_miningxp_mining_nextlevel 600
execute as @a[scores={elements_miningxp_mining_level=7}] run scoreboard players set @s elements_miningxp_mining_nextlevel 700
execute as @a[scores={elements_miningxp_mining_level=8}] run scoreboard players set @s elements_miningxp_mining_nextlevel 800
execute as @a[scores={elements_miningxp_mining_level=9}] run scoreboard players set @s elements_miningxp_mining_nextlevel 900
execute as @a[scores={elements_miningxp_mining_level=10}] run scoreboard players set @s elements_miningxp_mining_nextlevel 1000
execute as @a[scores={elements_miningxp_mining_level=11}] run scoreboard players set @s elements_miningxp_mining_nextlevel 1500
execute as @a[scores={elements_miningxp_mining_level=12}] run scoreboard players set @s elements_miningxp_mining_nextlevel 2000
execute as @a[scores={elements_miningxp_mining_level=13}] run scoreboard players set @s elements_miningxp_mining_nextlevel 2500
execute as @a[scores={elements_miningxp_mining_level=14}] run scoreboard players set @s elements_miningxp_mining_nextlevel 3000
execute as @a[scores={elements_miningxp_mining_level=15}] run scoreboard players set @s elements_miningxp_mining_nextlevel 3500
execute as @a[scores={elements_miningxp_mining_level=16}] run scoreboard players set @s elements_miningxp_mining_nextlevel 4000
execute as @a[scores={elements_miningxp_mining_level=17}] run scoreboard players set @s elements_miningxp_mining_nextlevel 4500
execute as @a[scores={elements_miningxp_mining_level=18}] run scoreboard players set @s elements_miningxp_mining_nextlevel 5000
execute as @a[scores={elements_miningxp_mining_level=19}] run scoreboard players set @s elements_miningxp_mining_nextlevel 5500
execute as @a[scores={elements_miningxp_mining_level=20}] run scoreboard players set @s elements_miningxp_mining_nextlevel 6000
execute as @a[scores={elements_miningxp_mining_level=21}] run scoreboard players set @s elements_miningxp_mining_nextlevel 6500
execute as @a[scores={elements_miningxp_mining_level=22}] run scoreboard players set @s elements_miningxp_mining_nextlevel 7000
execute as @a[scores={elements_miningxp_mining_level=23}] run scoreboard players set @s elements_miningxp_mining_nextlevel 7500
execute as @a[scores={elements_miningxp_mining_level=24}] run scoreboard players set @s elements_miningxp_mining_nextlevel 8000
execute as @a[scores={elements_miningxp_mining_level=25}] run scoreboard players set @s elements_miningxp_mining_nextlevel 8500
execute as @a[scores={elements_miningxp_mining_level=26}] run scoreboard players set @s elements_miningxp_mining_nextlevel 9000
execute as @a[scores={elements_miningxp_mining_level=27}] run scoreboard players set @s elements_miningxp_mining_nextlevel 9500
execute as @a[scores={elements_miningxp_mining_level=28}] run scoreboard players set @s elements_miningxp_mining_nextlevel 10000
execute as @a[scores={elements_miningxp_mining_level=29}] run scoreboard players set @s elements_miningxp_mining_nextlevel 12000
execute as @a[scores={elements_miningxp_mining_level=30}] run scoreboard players set @s elements_miningxp_mining_nextlevel 14000
execute as @a[scores={elements_miningxp_mining_level=31}] run scoreboard players set @s elements_miningxp_mining_nextlevel 16000
execute as @a[scores={elements_miningxp_mining_level=32}] run scoreboard players set @s elements_miningxp_mining_nextlevel 18000
execute as @a[scores={elements_miningxp_mining_level=33}] run scoreboard players set @s elements_miningxp_mining_nextlevel 20000
execute as @a[scores={elements_miningxp_mining_level=34}] run scoreboard players set @s elements_miningxp_mining_nextlevel 22000
execute as @a[scores={elements_miningxp_mining_level=35}] run scoreboard players set @s elements_miningxp_mining_nextlevel 24000
execute as @a[scores={elements_miningxp_mining_level=36}] run scoreboard players set @s elements_miningxp_mining_nextlevel 26000
execute as @a[scores={elements_miningxp_mining_level=37}] run scoreboard players set @s elements_miningxp_mining_nextlevel 28000
execute as @a[scores={elements_miningxp_mining_level=38}] run scoreboard players set @s elements_miningxp_mining_nextlevel 30000
execute as @a[scores={elements_miningxp_mining_level=39}] run scoreboard players set @s elements_miningxp_mining_nextlevel 32000
execute as @a[scores={elements_miningxp_mining_level=40}] run scoreboard players set @s elements_miningxp_mining_nextlevel 34000
execute as @a[scores={elements_miningxp_mining_level=41}] run scoreboard players set @s elements_miningxp_mining_nextlevel 36000
execute as @a[scores={elements_miningxp_mining_level=42}] run scoreboard players set @s elements_miningxp_mining_nextlevel 38000
execute as @a[scores={elements_miningxp_mining_level=43}] run scoreboard players set @s elements_miningxp_mining_nextlevel 40000
execute as @a[scores={elements_miningxp_mining_level=44}] run scoreboard players set @s elements_miningxp_mining_nextlevel 42000
execute as @a[scores={elements_miningxp_mining_level=45}] run scoreboard players set @s elements_miningxp_mining_nextlevel 44000
execute as @a[scores={elements_miningxp_mining_level=46}] run scoreboard players set @s elements_miningxp_mining_nextlevel 46000
execute as @a[scores={elements_miningxp_mining_level=47}] run scoreboard players set @s elements_miningxp_mining_nextlevel 48000
execute as @a[scores={elements_miningxp_mining_level=48}] run scoreboard players set @s elements_miningxp_mining_nextlevel 50000
execute as @a[scores={elements_miningxp_mining_level=49}] run scoreboard players set @s elements_miningxp_mining_nextlevel 60000
execute as @a[scores={elements_miningxp_mining_level=50}] run scoreboard players set @s elements_miningxp_mining_nextlevel 70000
execute as @a[scores={elements_miningxp_mining_level=51}] run scoreboard players set @s elements_miningxp_mining_nextlevel 80000
execute as @a[scores={elements_miningxp_mining_level=52}] run scoreboard players set @s elements_miningxp_mining_nextlevel 90000
execute as @a[scores={elements_miningxp_mining_level=53}] run scoreboard players set @s elements_miningxp_mining_nextlevel 100000
execute as @a[scores={elements_miningxp_mining_level=54}] run scoreboard players set @s elements_miningxp_mining_nextlevel 120000
execute as @a[scores={elements_miningxp_mining_level=55}] run scoreboard players set @s elements_miningxp_mining_nextlevel 140000
execute as @a[scores={elements_miningxp_mining_level=56}] run scoreboard players set @s elements_miningxp_mining_nextlevel 160000
execute as @a[scores={elements_miningxp_mining_level=57}] run scoreboard players set @s elements_miningxp_mining_nextlevel 180000
execute as @a[scores={elements_miningxp_mining_level=58}] run scoreboard players set @s elements_miningxp_mining_nextlevel 200000
execute as @a[scores={elements_miningxp_mining_level=59}] run scoreboard players set @s elements_miningxp_mining_nextlevel 220000
execute as @a[scores={elements_miningxp_mining_level=60}] run scoreboard players set @s elements_miningxp_mining_nextlevel 240000
execute as @a[scores={elements_miningxp_mining_level=61}] run scoreboard players set @s elements_miningxp_mining_nextlevel 260000
execute as @a[scores={elements_miningxp_mining_level=62}] run scoreboard players set @s elements_miningxp_mining_nextlevel 280000
execute as @a[scores={elements_miningxp_mining_level=63}] run scoreboard players set @s elements_miningxp_mining_nextlevel 300000
execute as @a[scores={elements_miningxp_mining_level=64}] run scoreboard players set @s elements_miningxp_mining_nextlevel 320000
execute as @a[scores={elements_miningxp_mining_level=65}] run scoreboard players set @s elements_miningxp_mining_nextlevel 340000
execute as @a[scores={elements_miningxp_mining_level=66}] run scoreboard players set @s elements_miningxp_mining_nextlevel 360000
execute as @a[scores={elements_miningxp_mining_level=67}] run scoreboard players set @s elements_miningxp_mining_nextlevel 380000
execute as @a[scores={elements_miningxp_mining_level=68}] run scoreboard players set @s elements_miningxp_mining_nextlevel 400000
execute as @a[scores={elements_miningxp_mining_level=69}] run scoreboard players set @s elements_miningxp_mining_nextlevel 420000
execute as @a[scores={elements_miningxp_mining_level=70}] run scoreboard players set @s elements_miningxp_mining_nextlevel 440000
execute as @a[scores={elements_miningxp_mining_level=71}] run scoreboard players set @s elements_miningxp_mining_nextlevel 460000
execute as @a[scores={elements_miningxp_mining_level=72}] run scoreboard players set @s elements_miningxp_mining_nextlevel 480000
execute as @a[scores={elements_miningxp_mining_level=73}] run scoreboard players set @s elements_miningxp_mining_nextlevel 500000
execute as @a[scores={elements_miningxp_mining_level=74}] run scoreboard players set @s elements_miningxp_mining_nextlevel 520000
execute as @a[scores={elements_miningxp_mining_level=75}] run scoreboard players set @s elements_miningxp_mining_nextlevel 540000
execute as @a[scores={elements_miningxp_mining_level=76}] run scoreboard players set @s elements_miningxp_mining_nextlevel 560000
execute as @a[scores={elements_miningxp_mining_level=77}] run scoreboard players set @s elements_miningxp_mining_nextlevel 580000
execute as @a[scores={elements_miningxp_mining_level=78}] run scoreboard players set @s elements_miningxp_mining_nextlevel 600000
execute as @a[scores={elements_miningxp_mining_level=79}] run scoreboard players set @s elements_miningxp_mining_nextlevel 620000
execute as @a[scores={elements_miningxp_mining_level=80}] run scoreboard players set @s elements_miningxp_mining_nextlevel 640000
execute as @a[scores={elements_miningxp_mining_level=81}] run scoreboard players set @s elements_miningxp_mining_nextlevel 660000
execute as @a[scores={elements_miningxp_mining_level=82}] run scoreboard players set @s elements_miningxp_mining_nextlevel 680000
execute as @a[scores={elements_miningxp_mining_level=83}] run scoreboard players set @s elements_miningxp_mining_nextlevel 700000
execute as @a[scores={elements_miningxp_mining_level=84}] run scoreboard players set @s elements_miningxp_mining_nextlevel 720000
execute as @a[scores={elements_miningxp_mining_level=85}] run scoreboard players set @s elements_miningxp_mining_nextlevel 740000
execute as @a[scores={elements_miningxp_mining_level=86}] run scoreboard players set @s elements_miningxp_mining_nextlevel 760000
execute as @a[scores={elements_miningxp_mining_level=87}] run scoreboard players set @s elements_miningxp_mining_nextlevel 780000
execute as @a[scores={elements_miningxp_mining_level=88}] run scoreboard players set @s elements_miningxp_mining_nextlevel 800000
execute as @a[scores={elements_miningxp_mining_level=89}] run scoreboard players set @s elements_miningxp_mining_nextlevel 820000
execute as @a[scores={elements_miningxp_mining_level=90}] run scoreboard players set @s elements_miningxp_mining_nextlevel 840000
execute as @a[scores={elements_miningxp_mining_level=91}] run scoreboard players set @s elements_miningxp_mining_nextlevel 860000
execute as @a[scores={elements_miningxp_mining_level=92}] run scoreboard players set @s elements_miningxp_mining_nextlevel 880000
execute as @a[scores={elements_miningxp_mining_level=93}] run scoreboard players set @s elements_miningxp_mining_nextlevel 900000
execute as @a[scores={elements_miningxp_mining_level=94}] run scoreboard players set @s elements_miningxp_mining_nextlevel 920000
execute as @a[scores={elements_miningxp_mining_level=95}] run scoreboard players set @s elements_miningxp_mining_nextlevel 940000
execute as @a[scores={elements_miningxp_mining_level=96}] run scoreboard players set @s elements_miningxp_mining_nextlevel 960000
execute as @a[scores={elements_miningxp_mining_level=97}] run scoreboard players set @s elements_miningxp_mining_nextlevel 980000
execute as @a[scores={elements_miningxp_mining_level=98}] run scoreboard players set @s elements_miningxp_mining_nextlevel 990000
execute as @a[scores={elements_miningxp_mining_level=99}] run scoreboard players set @s elements_miningxp_mining_nextlevel 1000000
execute as @a[scores={elements_miningxp_mining_level=100}] run scoreboard players set @s elements_miningxp_mining_nextlevel 100000000


execute as @a if score @s elements_miningxp_mining_xp >= @s elements_miningxp_mining_nextlevel unless score @s elements_miningxp_mining_level matches 100.. run scoreboard players add @s elements_miningxp_mining_level 1
execute as @a if score @s elements_miningxp_mining_xp >= @s elements_miningxp_mining_nextlevel unless score @s elements_miningxp_mining_level matches 101.. at @s run playsound minecraft:block.beacon.activate master @s
execute as @a if score @s elements_miningxp_mining_xp >= @s elements_miningxp_mining_nextlevel unless score @s elements_miningxp_mining_level matches 101.. run scoreboard players add @s elements_mana_mana-max 10
execute as @a if score @s elements_miningxp_mining_xp >= @s elements_miningxp_mining_nextlevel unless score @s elements_miningxp_mining_level matches 101.. run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text":"Du bist im Mining-Level aufgestiegen: Level "},{"score":{"name":"@s","objective":"elements_miningxp_mining_level"}}]
execute as @a[scores={elements_miningxp_mining_level=100}] if score @s elements_miningxp_mining_xp >= @s elements_miningxp_mining_nextlevel unless score @s elements_miningxp_mining_level matches 101.. run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text":"Herzlichen Glückwünsch!","color":"gold"},"\n",{"text":"Du hast das Maximale Mining-Level erreicht!","color":"gold"}]
