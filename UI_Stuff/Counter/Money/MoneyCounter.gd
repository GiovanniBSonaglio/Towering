extends NinePatchRect

func initialize(playerMoney):
	$Label.text = str(playerMoney)

func _on_UI_moneyUpdated(money):
	$Label.text = str(money) #como money é um inteiro, precisamos transformar money em string para representar na tela
