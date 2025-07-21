execute unless entity @n[tag=encounter_point,distance=..8] run scoreboard players remove @s[scores={ex.spawner.timer=1..}] ex.spawner.timer 1

execute if score @s ex.spawner.timer matches 0 unless entity @a[distance=..8] run function ex:spawner/spawn


tp @s ~ ~ ~ ~5 ~

particle flame ^ ^0.5 ^8
particle flame ^ ^0.5 ^-8

particle flame ^8 ^0.5 ^
particle flame ^-8 ^0.5 ^