vida = 10; // Vida inicial

// Função morrendo
morrendo = function()
{
	// perder vida
	if (vida > 1)
	{
		vida--;
	}
	else
	{
		instance_destroy();
		instance_create_layer(x, y, "Particulas", obj_explosao)
	}
}