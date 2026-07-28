if (global.debug) // Debug do tiro
{
	draw_text(20, 20, $"Level do Tiro: {level_tiro}"); // Debug do level do tiro
}

var _gui_height = display_get_gui_height(); // Pegando o tamanho da GUI do jogo
desenha_icone(spr_icone_escudo, escudos, _gui_height - 20); // Desenhando os escudos
desenha_icone(spr_icone_vida, vidas, _gui_height - 60); // Desenhando as vidas