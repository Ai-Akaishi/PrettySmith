#> sample:recipe/add
# 鍛冶台レシピを追加する

data modify storage pretty_smith: template set value "minecraft:feather"
data modify storage pretty_smith: base set value {id:"minecraft:stick"}
data modify storage pretty_smith: addition set value "minecraft:flint"
data modify storage pretty_smith: result set value {id:"minecraft:arrow",Count:4b,tag:{display:{Name:'{"text":"鍛冶台で作っただけの普通の矢","italic":false,"color":"light_purple"}'}}}
function #pretty_smith:add
