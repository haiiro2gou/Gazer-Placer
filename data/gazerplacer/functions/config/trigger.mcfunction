#> gazerplacer:config/trigger
# @input
#   as entity
# @within function gazerplacer:tick/player

# verify
    execute unless score @s Ashen.GazerPlacer.Trigger matches 0..2 run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"translate": "Ashen.Error.InvalidTrigger", "fallback": "Invalid trigger value"}]

# 持ち込み
    function indexstorage:pull/
    data modify storage indexstorage: Config.GazerPlacer.Revert set value false

# Notify Result
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage indexstorage: Config.GazerPlacer{NotifyResult: 0b} run data modify storage indexstorage: Config.GazerPlacer.Revert set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage indexstorage: Config.GazerPlacer{NotifyResult: 0b} run data modify storage indexstorage: Config.GazerPlacer.NotifyResult set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage indexstorage: Config.GazerPlacer{NotifyResult: 1b, Revert: 0b} run data modify storage indexstorage: Config.GazerPlacer.NotifyResult set value false
    execute if score @s Ashen.GazerPlacer.Trigger matches 1 if data storage indexstorage: Config.GazerPlacer{Revert: 1b} run data modify storage indexstorage: Config.GazerPlacer.Revert set value false

# Replace Mode
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} run data modify storage indexstorage: Config.GazerPlacer.Revert set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} run data modify storage indexstorage: Config.GazerPlacer.ReplaceMode set value true
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 1b, Revert: 0b} run data modify storage indexstorage: Config.GazerPlacer.ReplaceMode set value false
    execute if score @s Ashen.GazerPlacer.Trigger matches 2 if data storage indexstorage: Config.GazerPlacer{Revert: 1b} run data modify storage indexstorage: Config.GazerPlacer.Revert set value false

# 持ち出し
    data remove storage indexstorage: Config.GazerPlacer.Revert
    function indexstorage:push/

# loop
    execute unless score @s Ashen.GazerPlacer.Trigger matches 0 run function gazerplacer:config/
