#> gazerplacer:use/detector/core/exec
# @within function gazerplacer:use/detector/core/check

# get config
    function gazerplacer:config/get

# debug
    function gazerplacer:use/detector/core/point

# configurate
    execute if data entity @s SelectedItem{tag: {Ashen: {GazerPlacer: {Item: 1b}}}} run data modify storage gazerplacer:exec BlockID set from entity @s Inventory[{Slot: -106b}].id
    execute if data entity @s Inventory[{Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}] run data modify storage gazerplacer:exec BlockID set from entity @s SelectedItem.id

summon marker ~ ~ ~ {UUID: [I; 1, 3298, 0, 0]}
execute align xyz positioned ~ ~ ~ as 1-0-ce2-0-0 run tp @s ~ ~ ~
tellraw @a [{"nbt": "BlockID", "storage": "gazerplacer:exec"}]
tellraw @a [{"nbt": "Pos", "entity": "1-0-ce2-0-0"}]
kill 1-0-ce2-0-0

# exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} positioned ~ ~ ~ run function gazerplacer:use/detector/core/place
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} if score $Face Ashen.GazerPlacer.Detector matches 1 positioned ~-1 ~ ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} if score $Face Ashen.GazerPlacer.Detector matches 2 positioned ~ ~ ~1 run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} if score $Face Ashen.GazerPlacer.Detector matches 3 positioned ~1 ~ ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} if score $Face Ashen.GazerPlacer.Detector matches 4 positioned ~ ~ ~-1 run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} if score $Face Ashen.GazerPlacer.Detector matches 5 positioned ~ ~-1 ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} if score $Face Ashen.GazerPlacer.Detector matches 6 positioned ~ ~1 ~ run function gazerplacer:use/detector/core/place with storage gazerplacer:exec

# reset
    data remove storage gazerplacer:exec BlockID
