extends Control
@onready var input_nome: LineEdit = $formulario/HBoxContainer/LineEdit
@onready var input_idade: LineEdit = $formulario/HBoxContainer2/LineEdit
@onready var output_label: Label = $formulario/output_label


func _on_button_mostrar_pressed() -> void:
	var nome = input_nome.text
	var idade_texto = input_idade.tex
	pass # Replace with function body.
