//===== VARIÁVEIS =====//
velocidade = 2; // Velocidade do player

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
	
	// Atirando
	if (_atirar)
	{
		var _tiro = instance_create_layer(x, y, "Tiros", obj_tiro_player); // Criando o tiro
		_tiro.vspeed = -10; // Fazendo o tiro ir para cima
	}
}


