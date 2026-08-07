vida = 10; // Vida inicial

// Variável que controla o estado
estado = "chegando";

tempo_carregando = game_get_speed(gamespeed_fps) * 3; // Tempo que o inimigo vai esperar para atirar
timer_carregando = 0;

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
			timer_carregando++; // Fazendo o timer correr
				if (timer_carregando >= tempo_carregando)
				{
					estado = "atirando"; // Quando bater o tempo muda de estado
				}
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