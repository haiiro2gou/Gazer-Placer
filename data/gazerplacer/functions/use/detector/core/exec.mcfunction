#> gazerplacer:use/detector/core/exec
# @within function gazerplacer:use/detector/core/check

# get config
    function gazerplacer:config/get

# debug
    # function gazerplacer:use/detector/core/point

# configurate
    execute if data entity @s SelectedItem{tag: {Ashen: {GazerPlacer: {Item: 1b}}}} run data modify storage gazerplacer:exec BlockID set from entity @s Inventory[{Slot: -106b}].id
    execute if data entity @s Inventory[{Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}] run data modify storage gazerplacer:exec BlockID set from entity @s SelectedItem.id

# exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} positioned ~ ~ ~ run function gazerplacer:use/detector/core/place
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if score $Face Ashen.GazerPlacer.Detector matches 1 positioned ~1 ~ ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if score $Face Ashen.GazerPlacer.Detector matches 2 positioned ~ ~ ~-1 run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if score $Face Ashen.GazerPlacer.Detector matches 3 positioned ~-1 ~ ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if score $Face Ashen.GazerPlacer.Detector matches 4 positioned ~ ~ ~1 run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if score $Face Ashen.GazerPlacer.Detector matches 5 positioned ~ ~1 ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if score $Face Ashen.GazerPlacer.Detector matches 6 positioned ~ ~-1 ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec

# reset
    data remove storage gazerplacer:exec BlockID
