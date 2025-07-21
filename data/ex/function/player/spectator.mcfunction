
spectate @n[tag=this.camera]


execute if entity @n[tag=this.character,tag=encounter] run return run function ex:character/encounter

execute at @s run return run function ex:player/movement/get