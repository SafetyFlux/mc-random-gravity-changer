# Reset all players' gravity
gravity set_base_direction Down @a

# Remove scoreboard objectives and bossbar
scoreboard objectives remove GravityTimer
scoreboard objectives remove NextGravDirection
scoreboard objectives remove CurrGravDirection
bossbar remove minecraft:rgctimer

# Send confirmation message
tellraw @a {"text":"Random Gravity Changer v0.2 has been successfully uninstalled!","color":"red"}

# Disable datapack
datapack disable "file/random-gravity-changer-v0.2-MC-1.20.4.zip"