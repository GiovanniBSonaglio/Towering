extends HBoxContainer

var mana = null
var maxMana = null

#first, we need to initialize our max health. To do that, we will use the initialize func to go inside de max
#value of the Counter Label and update it in our screen, beacuse if we dont do it, the label will be empty
func initialize(currentMana,maximum):
	mana = currentMana
	maxMana = maximum
	$Counter/Label.text = "%s/%s" % [mana, maxMana]
	$TextureProgress.value = mana
	$TextureProgress.max_value = maximum

func _on_UI_manaUpdated(mana):
	$TextureProgress.value = mana
	$Counter/Label.text = "%s/%s" % [mana, maxMana] # get access to the field text of the counter node
