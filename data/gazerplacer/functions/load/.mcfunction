#> gazerplacer:load/
#
# Function executed at #load
#
# @within tag/function ashen_lib:load

# Validate
    data modify storage ashen_lib:api Argument.Version set from storage global Ashen.Lib.Version
    function ashen_lib:version/parser/
    data modify storage ashen_lib:api Argument.MinVersion set value "v0.3.1"
    data modify storage ashen_lib:api Argument.TargetVersion set from storage global Ashen.Lib.Version
    function ashen_lib:version/check/
    execute if data storage ashen_lib:api {Return: false} run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"translate": "Ashen.Error.CmdCaster.Version", "fallback": "Imcompatible Version! Please install Ashen-Lib datapack %s+", "with": [{"text": "v0.3.1"}]}]
    execute if data storage ashen_lib:api {Return: true} run function gazerplacer:load/main
