extends Label

func update_text(CharacterLevel, experience, required_exp, StrengthLevel, VitalityLevel, KnowledgeLevel, 
InteligenceLevel, AgilityLevel, AbilityLevel, Attack, MaxHealth, MaxMana, ExperienceMultiplier, 
PixelsPerSecond, CooldownMultiplier, AtributePoints):
	text = """CharacterLevel: %s
			Experience: %s
			Next level: %s
			StrengthLevel: %s
			VitalityLevel: %s
			KnowledgeLevel: %s
			InteligenceLevel: %s
			AgilityLevel: %s
			AbilityLevel: %s
			Attack: %s
			MaxHealth: %s
			MaxMana: %s
			ExperienceMultiplier: %s
			PixelsPerSecond: %s
			CooldownMultiplier: %s
			AtributesPoints: %s
			""" % [CharacterLevel, experience, required_exp, StrengthLevel, VitalityLevel, KnowledgeLevel, 
			InteligenceLevel, AgilityLevel, AbilityLevel, Attack, MaxHealth, MaxMana, ExperienceMultiplier, 
			PixelsPerSecond, CooldownMultiplier, AtributePoints]
