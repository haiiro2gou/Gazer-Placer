#> gazerplacer:config/trigger
# @input
#   as entity
# @within function gazerplacer:tick/player

# verify
    execute unless score @s Ashen.GazerPlacer.Trigger matches 0..2 run tellraw @a "a"

# 持ち込み
    function gazerplacer:config/get
    data modify storage gazerplacer:player Config.Revert set value false

# Notification
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage gazerplacer:player Config{NotifyResult: 0b} run data modify storage gazerplacer:player Config.Revert set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage gazerplacer:player Config{NotifyResult: 0b} run data modify storage gazerplacer:player Config.NotifyResult set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage gazerplacer:player Config{NotifyResult: 1b, Revert: 0b} run data modify storage gazerplacer:player Config.NotifyResult set value false
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage gazerplacer:player Config{Revert: 1b} run data modify storage gazerplacer:player Config.Revert set value false
# Replace Mode
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage gazerplacer:player Config{ReplaceMode: 0b} run data modify storage gazerplacer:player Config.Revert set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage gazerplacer:player Config{ReplaceMode: 0b} run data modify storage gazerplacer:player Config.ReplaceMode set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage gazerplacer:player Config{ReplaceMode: 1b, Revert: 0b} run data modify storage gazerplacer:player Config.ReplaceMode set value false
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage gazerplacer:player Config{Revert: 1b} run data modify storage gazerplacer:player Config.Revert set value false

# 持ち出し
    data remove storage gazerplacer:player Config.Revert
    function gazerplacer:config/set

# loop
    execute unless score @s Ashen.GazerPlacer.Trigger matches 0 run function gazerplacer:config/
