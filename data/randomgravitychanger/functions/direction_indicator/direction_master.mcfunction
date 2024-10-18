# Display an indicator of the current facing direction
# Note: Because this is based on player rotation, each gravity direction has its own set of statements

# Gravity: Down
execute if score value CurrGravDirection matches 0 run function randomgravitychanger:direction_indicator/down

# Gravity: Up
execute if score value CurrGravDirection matches 1 run function randomgravitychanger:direction_indicator/up

# Gravity: North
execute if score value CurrGravDirection matches 2 run function randomgravitychanger:direction_indicator/north

# Gravity: South
execute if score value CurrGravDirection matches 3 run function randomgravitychanger:direction_indicator/south

# Gravity: East
execute if score value CurrGravDirection matches 4 run function randomgravitychanger:direction_indicator/east

# Gravity: West
execute if score value CurrGravDirection matches 5 run function randomgravitychanger:direction_indicator/west