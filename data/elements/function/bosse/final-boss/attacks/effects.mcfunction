tellraw @a[distance=0..,gamemode=!spectator] ["",{"text": "[Warden] Server: ","color": "yellow"},{"text": "Der Warden hat sich selbst gestärkt und dich geschwächt!","color": "white"}]
effect give @a[distance=0..,gamemode=!spectator] weakness 10 1
effect give @a[distance=0..,gamemode=!spectator] slowness 10 1
effect give @s strength 10 1
effect give @s speed 10 1