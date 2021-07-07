extends Node

onready var _character = $Character
onready var _label = $Interface/Label
onready var _bar = $Interface/ExperienceBar

func _ready():
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)
	_bar.initialize(_character.experience, _character.experience_required)

func _on_ButtonStrength_ButtonPressed(Upgrade):
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)
	print("entreiaqui")

func _on_ButtonVitality_ButtonPressed(Upgrade):
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)
	print("entreiaqui2")

func _on_ButtonKnowledge_ButtonPressed(Upgrade):
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)

func _on_ButtonInteligence_ButtonPressed(Upgrade):
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)

func _on_ButtonAgility_ButtonPressed(Upgrade):
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)

func _on_ButtonAbility_ButtonPressed(Upgrade):
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)
	

func _on_ButtonXP_ButtonPressed(Upgrade):
	_character.gain_experience(952)
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)

func _on_ButtonLevel_ButtonPressed(Upgrade):
	_label.update_text(_character.CharacterLevel, _character.experience, _character.experience_required,
	_character.StrengthLevel, _character.VitalityLevel, _character.KnowledgeLevel, _character.InteligenceLevel,
	_character.AgilityLevel, _character.AbilityLevel, _character.Attack, _character.MaxHealth, _character.MaxMana,
	_character.ExperienceMultiplier, _character.PixelsPerSecond, _character.CooldownMultiplier, _character.AtributePoints)
