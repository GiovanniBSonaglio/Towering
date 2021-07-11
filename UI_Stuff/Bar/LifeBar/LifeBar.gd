extends HBoxContainer


var health = null
var maxHealth = null

#first, we need to initialize our max health. To do that, we will use the initialize func to go inside de max
#value of the Counter Label and update it in our screen, beacuse if we dont do it, the label will be empty
func initialize(currentHealth,maximum):
	health = currentHealth
	maxHealth = maximum
	$Counter/Label.text = "%s/%s" % [health, maxHealth]
	$TextureProgress.value = health
	$TextureProgress.max_value = maximum



func _on_UI_healthUpdated(health):
	$TextureProgress.value = health
	$Counter/Label.text = "%s/%s" % [health, maxHealth] # get access to the field text of the counter node
