#> gazerplacer:config/get
# @api

execute store result storage gazerplacer:player Index int 1 run scoreboard players get @s Ashen.GazerPlacer.UserID
function gazerplacer:config/core/get with storage gazerplacer:player
data remove storage gazerplacer:player Index
