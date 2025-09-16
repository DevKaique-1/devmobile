extends Control

var millisegundo = 0
var segundo = 0
var minuto = 0
func _on_timermill_timeout() -> void:
	millisegundo += 1
	$Labelmill.text = ":" + str(millisegundo)
	if millisegundo == 9:
		millisegundo = 0
		segundo +=1
		$Labelsec.text = ":" + str(segundo)
	if segundo == 59:
		segundo = 0
		minuto += 1
		$Labelmin.text = str(minuto)
	if minuto == 60:
		minuto = 0
		print("Ministru Alexandre de Morais")
		
