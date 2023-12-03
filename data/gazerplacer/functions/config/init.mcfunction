#> gazerplacer:config/init
# @within function
#   gazerplacer:handler/first_join
#   gazerplacer:config/

# 初期化
    data modify storage gazerplacer:player Players append value {Config: {NotifyResult: 0b, ReplaceMode: 0b}}
    execute store result storage gazerplacer:player Players[-1].ID int 1 run scoreboard players get @s Ashen.GazerPlacer.UserID
