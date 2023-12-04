#> gazerplacer:detector/core/16
# @within function
#   gazerplacer:detector/core/8

# flag
    scoreboard players set $16 Ashen.GazerPlacer.Detector 1
    execute if block ^ ^ ^0.03125 #gazerplacer:air if block ^ ^ ^-0.03125 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.03125 #gazerplacer:air if block ^ ^ ^0.03125 #gazerplacer:air rotated as 1-0-ce2-0-1 if block ^ ^ ^0.03125 #gazerplacer:air if block ^ ^ ^-0.03125 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.03125 #gazerplacer:air if block ^ ^ ^-0.03125 #gazerplacer:air run scoreboard players set $16 Ashen.GazerPlacer.Detector 0

# if flag remains, go deep
    execute if score $16 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^-0.015625 run function gazerplacer:detector/core/32
    execute if score $16 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^0.015625 run function gazerplacer:detector/core/32
