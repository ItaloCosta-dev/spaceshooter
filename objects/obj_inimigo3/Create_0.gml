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
					timer_carregando = 0; // resetando o timer
				}
		}
		break; // terminei o case
		
		case "atirando":
		{
			if (instance_exists(obj_player))
			{
				var _dir = point_direction(x, y, obj_player.x, obj_player.y); // Encontrando a posição do player
				var _tiro = instance_create_layer(x, y, "Tiros", obj_tiro_inimigo3a); // Criando o meu tiro
				_tiro.speed = 2; // Fazendo o tiro se mover
				_tiro.direction = _dir; // fazendo o tiro ir atrás do player
				estado = "carregando"; // Depois de atirar o inimigo carrega o tiro denovo
			}
		}
		break;
		
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