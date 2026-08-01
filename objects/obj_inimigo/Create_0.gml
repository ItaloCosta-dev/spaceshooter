alarm[0] = 120; // Iniciando o alarme em 2 segundos

atirando = function() // Método do tiro do inimigo
{
	var _tiro = instance_create_layer(x, y, "Tiros", obj_tiro_inimigo);
	_tiro.vspeed = 4;
}

morrendo = function() // Função de criar o powerup quando o inimigo morre
{
	sendo_destruido(obj_explosao); // Função da explosão
	instance_create_layer(x, y, layer, obj_power_up); // Criando o power up
}