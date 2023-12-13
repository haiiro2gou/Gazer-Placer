#> gazerplacer:interaction/interaction/exec
# @within tag/function gazerplacer:detector/exec

# get config
    function indexstorage:pull/

# debug
    # function gazerplacer:interaction/interaction/point

# configurate
    execute if data entity @s SelectedItem{tag: {Ashen: {GazerPlacer: {Item: 1b}}}} run data modify storage gazerplacer: Interaction.BlockID set from entity @s Inventory[{Slot: -106b}].id
    execute if data entity @s Inventory[{Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}] run data modify storage gazerplacer: Interaction.BlockID set from entity @s SelectedItem.id

# exec
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 1b} positioned ~ ~ ~ run function gazerplacer:interaction/interaction/place
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} if score #Face Ashen.GazerPlacer.Detector matches 1 positioned ~1 ~ ~ run function gazerplacer:interaction/interaction/place with storage gazerplacer: Interaction
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} if score #Face Ashen.GazerPlacer.Detector matches 2 positioned ~ ~ ~-1 run function gazerplacer:interaction/interaction/place with storage gazerplacer: Interaction
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} if score #Face Ashen.GazerPlacer.Detector matches 3 positioned ~-1 ~ ~ run function gazerplacer:interaction/interaction/place with storage gazerplacer: Interaction
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} if score #Face Ashen.GazerPlacer.Detector matches 4 positioned ~ ~ ~1 run function gazerplacer:interaction/interaction/place with storage gazerplacer: Interaction
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} if score #Face Ashen.GazerPlacer.Detector matches 5 positioned ~ ~1 ~ run function gazerplacer:interaction/interaction/place with storage gazerplacer: Interaction
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} if score #Face Ashen.GazerPlacer.Detector matches 6 positioned ~ ~-1 ~ run function gazerplacer:interaction/interaction/place with storage gazerplacer: Interaction

# reset
    data remove storage gazerplacer: Interaction.BlockID
