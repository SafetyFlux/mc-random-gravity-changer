# Add objectives
scoreboard objectives add GravityTimer dummy
scoreboard objectives add NextGravDirection dummy
scoreboard objectives add CurrGravDirection dummy
scoreboard players set value GravityTimer 0
scoreboard players set value NextGravDirection 0
scoreboard players set value CurrGravDirection 0

# Set up timer bossbar
bossbar add minecraft:rgctimer [{"text":"Next Direction: ","color":"white"},{"text":"Loading...","color":"green"}]
bossbar set minecraft:rgctimer players @a
bossbar set minecraft:rgctimer color blue
bossbar set minecraft:rgctimer max 600
bossbar set minecraft:rgctimer style notched_6

# Send confirmation message
tellraw @a {"text":"Random Gravity Changer v0.1 has been successfully loaded!","color":"green"}