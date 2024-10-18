# Change the gravity of all players
execute if score value GravityTimer matches 0 if score value NextGravDirection matches 0 run gravity set_base_direction Down @a
execute if score value GravityTimer matches 0 if score value NextGravDirection matches 1 run gravity set_base_direction Up @a
execute if score value GravityTimer matches 0 if score value NextGravDirection matches 2 run gravity set_base_direction North @a
execute if score value GravityTimer matches 0 if score value NextGravDirection matches 3 run gravity set_base_direction South @a
execute if score value GravityTimer matches 0 if score value NextGravDirection matches 4 run gravity set_base_direction East @a
execute if score value GravityTimer matches 0 if score value NextGravDirection matches 5 run gravity set_base_direction West @a

# Get the current gravity direction and set the next direction
execute if score value GravityTimer matches 0 run execute store result score value CurrGravDirection run scoreboard players get value NextGravDirection
execute if score value NextGravDirection = value CurrGravDirection run execute store result score value NextGravDirection run random value 0..5

# Change the bossbar text
execute if score value GravityTimer matches 0..9 if score value NextGravDirection matches 0 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"Down","color":"green"}]
execute if score value GravityTimer matches 0..9 if score value NextGravDirection matches 1 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"Up","color":"red"}]
execute if score value GravityTimer matches 0..9 if score value NextGravDirection matches 2 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"North","color":"blue"}]
execute if score value GravityTimer matches 0..9 if score value NextGravDirection matches 3 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"South","color":"gold"}]
execute if score value GravityTimer matches 0..9 if score value NextGravDirection matches 4 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"East","color":"dark_purple"}]
execute if score value GravityTimer matches 0..9 if score value NextGravDirection matches 5 run bossbar set minecraft:rgctimer name [{"text":"Next Direction: ","color":"white"},{"text":"West","color":"yellow"}]

# Set the bossbar value
bossbar set minecraft:rgctimer players @a
execute store result bossbar minecraft:rgctimer value run scoreboard players get value GravityTimer

# Increment the timer and reset when it hits 600
scoreboard players add value GravityTimer 1
execute if score value GravityTimer matches 600 run scoreboard players set value GravityTimer 0

# Display title for currently facing direction
function randomgravitychanger:direction_indicator/direction_master