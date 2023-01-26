#> pretty_smith:add
# 鍛冶台レシピを追加するよ

## id=base, material=addition, pattern=template
data modify storage pretty_crafter: recipe.items set value []
data modify storage pretty_crafter: recipe.items append from storage pretty_smith: base
data modify storage pretty_crafter: recipe.items[0].tag.Trim.material set from storage pretty_smith: addition
data modify storage pretty_crafter: recipe.items[0].tag.Trim.template set from storage pretty_smith: pattern
data modify storage pretty_crafter: recipe.result set from storage pretty_smith: result
data modify storage pretty_crafter: recipe.category set value {Name:"PrettySmith"}
data modify storage pretty_crafter: recipe_space set value {Name:"PrettySmith"}
function #pretty_crafter:add
