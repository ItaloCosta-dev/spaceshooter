//===== VARIÁVEIS =====//
velocidade = 2; // Velocidade do player
espera_tiro = 10; // Delay do tiro
timer_tiro = 0; // Conta o tempo entre um tiro e outro
level_tiro = 1; // Define o level inicial do tiro
vidas = 3; // Jogador começa com três de vida
escudos = 3; // Jogador começa com três de escudo

// Sistema de controle do Jogador //
controla_player = function()
{
	var _cima, _baixo, _esquerda, _direita, _atirar; // Ações do jogador
	_cima = keyboard_check(ord("W")) or keyboard_check(vk_up); // Movimentando o player para cima	
	_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down); // Movimentando o player para baixo
	_esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left); // Movimentando o player para a esquerda
	_direita = keyboard_check(ord("D")) or keyboard_check(vk_right); // Movimentando o player para a direita
	_atirar = keyboard_check(vk_space) or mouse_check_button(mb_left); // Atirando com o SPACE

	// Movendo o player para cima
	if (_cima == true)
	{
		y -= velocidade; 
	}
	// Movendo o player para baixo
	if (_baixo == true)
	{
		y += velocidade;
	}
	// Movendo o player para a esquerda
	if (_esquerda == true)
	{
		x -= velocidade;
	}
	// Movendo o player para a direita
	if (_direita == true)
	{
		x += velocidade;
	}
	
	x = clamp(x, 19, room_width - 19); // Impedindo o jogador a sair pelas laterais
	y = clamp(y, 19, room_height - 19); // // Impedindo o jogador a sair por cima ou por baixo
	
	
	timer_tiro--; // Diminuindo o timer do tiro (agora o tiro sai intermitente)
	
	// Chamando o método de tiro 1
	if (_atirar && timer_tiro <= 0)
	{
		// Alterando o level do tiro
		if (level_tiro == 1) // Tiro 1
		{
			tiro_1();
		}
		else if (level_tiro == 2) // Tiro 2
		{
			tiro_2();
		}
		else if (level_tiro == 3) // Tiro 3
		{
			tiro_3();
		}
		timer_tiro = espera_tiro; // Avisando que o timer foi resetado
	}
}


//===== MÉTODO DE TIROS =====//
tiro_1 = function() // Método de tiro 1
{
	var _tiro = instance_create_layer(x, y, "Tiros", obj_tiro_player); // Criando o tiro
	_tiro.vspeed = -10; // Fazendo o tiro ir para cima
}

tiro_2 = function() // Método de tiro 2
{
	// Tiro da esquerda
	var _tiro = instance_create_layer(x - 10, y, "Tiros", obj_tiro_player);
	_tiro.vspeed = -10;
	
	// Tiro da diretia
	_tiro = instance_create_layer(x + 10, y, "Tiros", obj_tiro_player);
	_tiro.vspeed = -10;
}

tiro_3 = function() // Método de tiro 3 - Junção do tiro 1 e tiro 2
{
	tiro_1(); // Chamando tiro 1
	tiro_2(); // Chamando tiro 2
}


ganha_level_tiro = function() // Sistema de ganho de level do player
{
	if (level_tiro < 3) // Limitando o level do tiro até 3
	{
		level_tiro++;
	}	
}

desenha_icone = function(_icone = spr_icone_vida, _qtd = 1, _y = 20) // Função que desenha os ícones de vida do jogador
{
	var _espaco = 20; // Valor do espaço entre cada ícone de vida
	repeat(_qtd) // Desenhando ícone da vida do player usando laço de repetição
	{
		draw_sprite(_icone, 0, 20 + _espaco, _y); // Desenhando o ícone da vida
		_espaco += 30; // Espaço entre os ícones
	}
}
