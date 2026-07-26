// Sistema de controle do Jogador //
controla_player = function()
{
	var _cima, _baixo, _esquerda, _direita, _atirar; // Ações do jogador
	_cima = keyboard_check(ord("W")); // Movimentando o player para cima	
	_baixo = keyboard_check(ord("S")); // Movimentando o player para baixo
	_esquerda = keyboard_check(ord("A")); // Movimentando o player para a esquerda
	_direita = keyboard_check(ord("D")); // Movimentando o player para a direita
	_atirar = keyboard_check(vk_space); // Atirando com o SPACE


	// TESTES - APAGAR DEPOIS! //
	if (_cima == true)
	{
		show_message("cima")
	}
	if (_baixo == true)
	{
		show_message("baixo")
	}
	if (_esquerda == true)
	{
		show_message("esquerda")
	}
	if (_direita == true)
	{
		show_message("direita")
	}
	if (_atirar == true)
	{
		show_message("Atirar")
	}
}


