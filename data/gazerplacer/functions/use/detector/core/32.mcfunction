#> gazerplacer:use/detector/core/32
# @within function
#   gazerplacer:use/detector/core/16

# block detection
    scoreboard players set $32 Ashen.GazerPlacer.Detector 1
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^0.015625 unless block ~ ~ ~ #gazerplacer:air run function gazerplacer:use/detector/core/check
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^-0.015625 unless block ~ ~ ~ #gazerplacer:air run function gazerplacer:use/detector/core/check
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 rotated ~180 ~ positioned ^ ^ ^0.015625 unless block ~ ~ ~ #gazerplacer:air rotated as @s run function gazerplacer:use/detector/core/check
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 rotated ~180 ~ positioned ^ ^ ^-0.015625 unless block ~ ~ ~ #gazerplacer:air rotated as @s run function gazerplacer:use/detector/core/check
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 rotated as 1-0-ce2-0-1 positioned ^ ^ ^0.015625 unless block ~ ~ ~ #gazerplacer:air rotated as @s run function gazerplacer:use/detector/core/check
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 rotated as 1-0-ce2-0-1 positioned ^ ^ ^-0.015625 unless block ~ ~ ~ #gazerplacer:air rotated as @s run function gazerplacer:use/detector/core/check
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 rotated as 1-0-ce2-0-1 rotated ~180 ~ positioned ^ ^ ^0.015625 unless block ~ ~ ~ #gazerplacer:air rotated as @s run function gazerplacer:use/detector/core/check
    execute if score $32 Ashen.GazerPlacer.Detector matches 1 rotated as 1-0-ce2-0-1 rotated ~180 ~ positioned ^ ^ ^-0.015625 unless block ~ ~ ~ #gazerplacer:air rotated as @s run function gazerplacer:use/detector/core/check
