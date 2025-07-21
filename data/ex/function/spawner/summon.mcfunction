
summon item_display ~ ~ ~ {item:{id:"minecraft:magma_block"},Tags:["spawner"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}

execute as @e[tag=spawner] unless score @s ex.spawner.timer matches -2147483648..2147483647 run scoreboard players set @s ex.spawner.timer 200