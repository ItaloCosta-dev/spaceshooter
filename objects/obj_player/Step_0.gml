controla_player() // Chamando a função controla player

// Debug: mudando o level do tiro
if (keyboard_check_pressed(ord("O"))) // Aumentando o level do tiro
{
	level_tiro++;
}
if (keyboard_check_pressed(ord("L"))) // Diminuindo o level do tiro
{
	level_tiro--;
}