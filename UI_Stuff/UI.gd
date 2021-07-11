extends Control

#I`ve created 3 actions in the project and binded z,x and c to change health bar, mana bar and money counter
#respectively in order to test the behavior of the UI elements

var playerHealth = 1
var playerMaxHealth = 35
var playerMana = 2
var playerMaxMana = 30
var playerMoney = 0

signal healthUpdated(health)
signal manaUpdated(mana)
signal moneyUpdated(money)

onready var lifeBar = get_node("Bars/LifeBar")
onready var manaBar = get_node("Bars/ManaBar")
onready var moneyCounter = get_node("MoneyCounter")

# In the ready function we will always initialize the player current resources values like health, mana and money
# TODO: Change the artificial variables to real ones from the player node
func _ready():
	moneyCounter.initialize(playerMoney)
	lifeBar.initialize(playerHealth, playerMaxHealth)
	manaBar.initialize(playerMana, playerMaxMana)

# 
func _process(delta):
	if Input.is_action_just_pressed("health_changed"):
		if playerHealth - 1 >= 0:
			playerHealth -= 1
			healthChanged(playerHealth)
	if Input.is_action_just_pressed("mana_changed"):
		playerMana -= 1
		manaChanged(playerMana)
	if Input.is_action_just_pressed("money_changed"):
		playerMoney += 1
		moneyChanged(playerMoney)


func healthChanged(health):
	emit_signal("healthUpdated", health)
	print(health)

func manaChanged(mana):
	emit_signal("manaUpdated", mana)
	print(mana)

func moneyChanged(money):
	emit_signal("moneyUpdated", money)
	print(money)
