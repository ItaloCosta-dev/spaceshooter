if (global.debug) // Debug do tiro
{
	draw_text(20, 20, $"Level do Tiro: {level_tiro}"); // Debug do level do tiro
}

var _gui_height = display_get_gui_height(); // Pegando o tamanho da GUI do jogo
draw_sprite(spr_icone_vida, 0, 20, _gui_height - 20); // Desenhando o ícone da vida