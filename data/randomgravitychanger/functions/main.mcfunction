# Change the gravity of all players
execute if score value GravityTimer matches 0 if score value GravityDirection matches 0..9 run gravity set_base_direction Down @a
execute if score value GravityTimer matches 0 if score value GravityDirection matches 10..19 run gravity set_base_direction Up @a
execute if score value GravityTimer matches 0 if score value GravityDirection matches 20..29 run gravity set_base_direction North @a
execute if score value GravityTimer matches 0 if score value GravityDirection matches 30..39 run gravity set_base_direction South @a
execute if score value GravityTimer matches 0 if score value GravityDirection matches 40..49 run gravity set_base_direction East @a
execute if score value GravityTimer matches 0 if score value GravityDirection matches 50..59 run gravity set_base_direction West @a

# Set the next direction and change the bossbar text
execute if score value GravityTimer matches 0 run execute store result score value GravityDirection run random value 0..59
execute if score value GravityTimer matches 0 if score value GravityDirection matches 0..9 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"Down","color":"green"}]
execute if score value GravityTimer matches 0 if score value GravityDirection matches 10..19 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"Up","color":"green"}]
execute if score value GravityTimer matches 0 if score value GravityDirection matches 20..29 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"North","color":"green"}]
execute if score value GravityTimer matches 0 if score value GravityDirection matches 30..39 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"South","color":"green"}]
execute if score value GravityTimer matches 0 if score value GravityDirection matches 40..49 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"East","color":"green"}]
execute if score value GravityTimer matches 0 if score value GravityDirection matches 50..59 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"West","color":"green"}]

# Set the bossbar value
execute store result bossbar minecraft:rgctimer value run scoreboard players get value GravityTimer

# Increment the timer and reset when it hits 600
scoreboard players add value GravityTimer 1
execute if score value GravityTimer matches 600 run scoreboard players set value GravityTimer 0