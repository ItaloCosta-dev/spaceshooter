vida = 10; // Vida inicial

// Variável que controla o estado
estado = "chegando";

// Máquina de estado
maquina_de_estado = function()
{
	switch(estado)
	{
		case "chegando": // o inimigo está chegando
		{
			if (y < 160)
			{
				vspeed = 1.2;
			}
			else
			{
				estado = "carregando"; // terminou o estado de "chegando", chama o estado "carregando"
			}
		}
		break; // Sai do estado
		
		case "carregando": // Carregando o tiro
		{
			vspeed = 0; // Fazendo o inimigo parar 
		}
		break; // terminei o case
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