extends Node

signal experience_gained(growth_data)

# CHARACTER STATS
export (int) var Attack = 60
export (int) var MaxHealth = 100
export (int) var MaxMana = 100
export (float) var ExperienceMultiplier = 1
export (int) var PixelsPerSecond = 160
export (float) var CooldownMultiplier = 1

# LEVELING SYSTEM
export (int) var CharacterLevel = 1
export (int) var StrengthLevel  = 10
export (int) var VitalityLevel = 10
export (int) var KnowledgeLevel = 10
export (int) var InteligenceLevel = 10
export (int) var AgilityLevel = 10
export (int) var AbilityLevel = 10

var experience = 0
var experience_total = 0
var experience_required = get_required_experience(CharacterLevel)
var AtributePoints = 0

func get_required_experience(CharacterLevel):
	return round(pow(1.25, (CharacterLevel-1)) * 1000)

func GetAttack(StrengthLevel):
	return round(pow(1.05, (StrengthLevel-10)) * 60)

func GetMaxHealth(VitalityLevel):
	return round(pow(1.05, (VitalityLevel-10)) * 100)

func GetMaxMana(KnowledgeLevel):
	return round(pow(1.05, (KnowledgeLevel-10)) * 100)

func GetExperienceMultiplier(InteligenceLevel):
	return (pow(1.05, (InteligenceLevel-10)))

func GetPixelsPerSecond(AgilityLevel):
	return round(pow(1.01, (AgilityLevel-10)) * 160)

func GetCooldownMultiplier(AbilityLevel):
	return (pow(0.99, (AbilityLevel-10)))
	

func gain_experience(amount):
	experience_total += amount
	experience += amount
	var growth_data = []
	growth_data.append([experience, get_required_experience(CharacterLevel)])
	emit_signal("experience_gained", growth_data)

func _on_ButtonLevel_ButtonPressed(Upgrade):
	if experience >= experience_required:
		var growth_data = []
		experience -= experience_required
		growth_data.append([experience_required, experience_required])
		
		CharacterLevel += 1
		StrengthLevel  += 1
		VitalityLevel += 1
		KnowledgeLevel += 1
		InteligenceLevel += 1
		AgilityLevel += 1
		AbilityLevel += 1
		AtributePoints += 3

		experience_required = get_required_experience(CharacterLevel)
		Attack = GetAttack(StrengthLevel)
		MaxHealth = GetMaxHealth(VitalityLevel)
		MaxMana = GetMaxMana(KnowledgeLevel)
		ExperienceMultiplier = GetExperienceMultiplier(InteligenceLevel)
		PixelsPerSecond = GetPixelsPerSecond(AgilityLevel)
		CooldownMultiplier = GetCooldownMultiplier(AbilityLevel)

func _on_ButtonStrength_ButtonPressed(Upgrade):
	if AtributePoints >= 1:
		print (Upgrade)
		StrengthLevel += 1
		AtributePoints -= 1
		Attack = GetAttack(StrengthLevel)
		print(StrengthLevel)

func _on_ButtonVitality_ButtonPressed(Upgrade):
	if AtributePoints >= 1:
		print (Upgrade)
		VitalityLevel += 1
		AtributePoints -= 1
		MaxHealth = GetMaxHealth(VitalityLevel)
		print(VitalityLevel)

func _on_ButtonKnowledge_ButtonPressed(Upgrade):
	if AtributePoints >= 1:
		print (Upgrade)
		KnowledgeLevel += 1
		AtributePoints -= 1
		MaxMana = GetMaxMana(KnowledgeLevel)

func _on_ButtonInteligence_ButtonPressed(Upgrade):
	if AtributePoints >= 1:
		print (Upgrade)
		InteligenceLevel += 1
		AtributePoints -= 1
		ExperienceMultiplier = GetExperienceMultiplier(InteligenceLevel)

func _on_ButtonAgility_ButtonPressed(Upgrade):
	if AtributePoints >= 1:
		print (Upgrade)
		AgilityLevel += 1
		AtributePoints -= 1
		PixelsPerSecond = GetPixelsPerSecond(AgilityLevel)

func _on_ButtonAbility_ButtonPressed(Upgrade):
	if AtributePoints >= 1:
		print (Upgrade)
		AbilityLevel += 1
		AtributePoints -= 1
		CooldownMultiplier = GetCooldownMultiplier(AbilityLevel)




