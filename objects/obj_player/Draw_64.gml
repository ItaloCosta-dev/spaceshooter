if (global.debug) // Debug do tiro
{
	draw_text(20, 20, $"Level do Tiro: {level_tiro}"); // Debug do level do tiro
}

var _gui_height = display_get_gui_height(); // Pegando o tamanho da GUI do jogo
draw_text(20, _gui_height - 40, "Vida"); // Escrevendo vida na tela usando a GUI Height