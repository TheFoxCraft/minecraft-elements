advancement revoke @s only elements:items/customs/hype-o-meter


execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=..199}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=..199}] run title @s actionbar ["",{"text": "Du hast zu wenig Level!","color": "red"}]

execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=200..}] run give @s firework_rocket 5
execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=200..}] at @s run summon firework_rocket ~5 ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,65280,255]}]}}}}
execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=200..}] at @s run summon firework_rocket ~-5 ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,65280,255]}]}}}}
execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=200..}] at @s run summon firework_rocket ~ ~ ~5 {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,65280,255]}]}}}}
execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=200..}] at @s run summon firework_rocket ~ ~ ~-5 {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,65280,255]}]}}}}
execute as @s[scores={elements_custom-items_item-click_cooldown=0,elements_mainlevel=200..}] run xp add @s -200 levels

scoreboard players set @s elements_custom-items_item-click_cooldown 2