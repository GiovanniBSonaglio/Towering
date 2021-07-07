extends Button

signal ButtonPressed(Skill)

func _ready():
	connect("pressed",self,"_on_Button_Pressed")

func _on_Button_Pressed():
	emit_signal("ButtonPressed", "SummonerSkill2Upgrade")
