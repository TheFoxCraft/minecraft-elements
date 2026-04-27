execute store result score @s elements_custom-items_mystery_excalibur_sword_random run random value 1..4

$execute if score @s elements_custom-items_mystery_excalibur_sword_random matches 1 run summon item_display $(sword_x) $(sword_y) $(sword_z) {billboard:"fixed",Tags:["elements_mystery_excalibur_sword"],transformation:[4.318f,2.475f,-0.482f,0f,2.488f,-4.337f,0.026f,2f,-0.405f,-0.262f,-4.977f,0f,0f,0f,0f,1f],item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}}
$execute if score @s elements_custom-items_mystery_excalibur_sword_random matches 2 run summon item_display $(sword_x) $(sword_y) $(sword_z) {billboard:"fixed",Tags:["elements_mystery_excalibur_sword"],transformation:[4.46f,2.139f,-0.732f,0f,2.208f,-4.469f,0.388f,2f,-0.488f,-0.669f,-4.931f,0f,0f,0f,0f,1f],item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}}
$execute if score @s elements_custom-items_mystery_excalibur_sword_random matches 3 run summon item_display $(sword_x) $(sword_y) $(sword_z) {billboard:"fixed",Tags:["elements_mystery_excalibur_sword"],transformation:[-3.48f,-2.745f,2.314f,0f,2.855f,-4.07f,-0.536f,2f,2.178f,0.948f,4.4f,0f,0f,0f,0f,1f],item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}}
$execute if score @s elements_custom-items_mystery_excalibur_sword_random matches 4 run summon item_display $(sword_x) $(sword_y) $(sword_z) {billboard:"fixed",Tags:["elements_mystery_excalibur_sword"],transformation:[3.096f,1.924f,3.422f,0f,2.832f,-4.113f,-0.249f,2.501f,2.719f,2.093f,-3.637f,0f,0f,0f,0f,1f],item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}}


$summon lightning_bolt $(sword_x) $(sword_y) $(sword_z)

