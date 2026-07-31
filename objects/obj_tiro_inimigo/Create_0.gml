morrendo = function()
{
	instance_destroy(); // O tiro se destrói ao colidir com o player
	instance_create_layer(x, y, layer, obj_part_tiro); // Criando a partícula do tiro ao colidir com o player
}