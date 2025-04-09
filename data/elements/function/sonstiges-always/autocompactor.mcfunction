execute as @a[scores={elements_autocompactor=1,elements_inv_cobblestone=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/stone"}
execute as @a[scores={elements_autocompactor=1,elements_inv_cobblestone=64..}] run clear @s cobblestone 64
execute as @a[scores={elements_autocompactor=1,elements_inv_basalt=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/stone"}
execute as @a[scores={elements_autocompactor=1,elements_inv_basalt=64..}] run clear @s basalt 64
execute as @a[scores={elements_autocompactor=1,elements_inv_stone=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/stone"}
execute as @a[scores={elements_autocompactor=1,elements_inv_stone=64..}] run clear @s stone 64

execute as @a[scores={elements_autocompactor=2,elements_inv_sprucelog=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/wood"}
execute as @a[scores={elements_autocompactor=2,elements_inv_sprucelog=64..}] run clear @s spruce_log 64

execute as @a[scores={elements_autocompactor=3,elements_inv_crimson_vines=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/crimson_vines"}
execute as @a[scores={elements_autocompactor=3,elements_inv_crimson_vines=64..}] run clear @s crimson_roots[custom_model_data=1] 64
