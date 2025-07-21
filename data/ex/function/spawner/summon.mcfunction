
summon item_display ~ ~ ~ {item:{id:"minecraft:magma_block"},Tags:["spawner"]}

execute as @e[tag=spawner] unless score @s ex.spawner.timer matches -2147483648..2147483647 run scoreboard players set @s ex.spawner.timer 200