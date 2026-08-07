vida = 10; // Vida inicial

// Variável que controla o estado
estado = "chegando";

// Máquina de estado
maquina_de_estado = function()
{
	switch(estado)
	{
		case "chegando":
		{
			if (y < 160)
			{
				vspeed =1.2;
			}
			
		}
	}
}

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