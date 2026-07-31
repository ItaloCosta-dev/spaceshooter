alarm[0] = 120; // Iniciando o alarme em 2 segundos

atirando = function() // Método do tiro do inimigo
{
	var _tiro = instance_create_layer(x, y, "Tiros", obj_tiro_inimigo);
	_tiro.vspeed = 4;
}