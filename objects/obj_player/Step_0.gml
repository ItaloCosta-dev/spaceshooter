controla_player() // Chamando a função controla player

if (keyboard_check_pressed(vk_enter)) // Debug de perder vida
{
	perde_vida();
}

if (keyboard_check_released(vk_tab)) // Ativando e desativando o debug com o TAB
{
	global.debug = !global.debug;
}


if (keyboard_check_pressed(ord("O"))) // Debug: mudando o level do tiro
{
	level_tiro++;
}
if (keyboard_check_pressed(ord("L"))) // Diminuindo o level do tiro
{
	level_tiro--;
}


if (keyboard_check_pressed(ord("E"))) // Debug: ao apertar a tecla E perde um escudo
{
	usa_escudo(); // Chamando o método de usar escudo
}

if (instance_exists(meu_escudo)) //Debug: criando escudo
{
	meu_escudo.x = x;
	meu_escudo.y = y;
}
else 
{
	meu_escudo = noone; // Reseta a variável meu_escudo (evitar bug)
}