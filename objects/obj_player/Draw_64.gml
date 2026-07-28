if (global.debug) // Debug do tiro
{
	draw_text(20, 20, $"Level do Tiro: {level_tiro}"); // Debug do level do tiro
}

var _gui_height = display_get_gui_height(); // Pegando o tamanho da GUI do jogo

var _espaco = 20; // Valor do espaço entre cada ícone de vida

// Desenhando ícone da vida do player usando laço de repetição
repeat(vidas)
{
	draw_sprite(spr_icone_vida, 0, 20 + _espaco, _gui_height - 20); // Desenhando o ícone da vida
	_espaco += 30; // Espaço entre os ícones
}
