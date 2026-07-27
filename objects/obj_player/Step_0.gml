controla_player() // Chamando a função controla player

// Debug: mudando o level do tiro
if (keyboard_check_pressed(vk_up))
{
	level_tiro--;
}
if (keyboard_check_pressed(vk_down))
{
	level_tiro++;
}