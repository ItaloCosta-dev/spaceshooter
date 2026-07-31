//===== GLOBAIS =====//
global.debug = false; // O jogo não tem debug

function sendo_destruido(_particula = obj_part_tiro) // Função de destruir o inimigo
{
	instance_destroy(); // Destruindo o inimigo
	instance_create_layer(x, y, "Particulas", _particula); // Criando a partícula
}