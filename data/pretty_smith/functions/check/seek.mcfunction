#> pretty_smith:check/seek
# カスタム鍛冶台レシピを見つける
### Copyright © 2023 赤石愛

data modify storage pretty_crafter: items set value {}
data modify storage pretty_crafter: items.0.0 set from storage pretty_smith: items[-1]
data modify storage pretty_crafter: recipe.category set value {Name:"PrettySmith"}
data modify storage pretty_crafter: recipe_space set value {Name:"PrettySmith"}
function #pretty_crafter:find

execute unless data storage pretty_crafter: found run function pretty_smith:check/checked
execute if data storage pretty_crafter: found run function pretty_smith:check/replace
data remove storage pretty_crafter: found

data remove storage pretty_smith: items[-1]
execute if data storage pretty_smith: items[0] run function pretty_smith:check/seek
