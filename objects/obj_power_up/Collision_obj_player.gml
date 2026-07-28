instance_destroy(); // Destruindo power up ao colidir com o player
other.ganha_level_tiro(); // Chamando o método de ganhar level
var _part = instance_create_layer(x, y, layer, obj_part_tiro); // Criando a partícula do tiro na minha posição
_part.image_angle = random(359); // Detruindo a partícula em um ângulo diferente. Apenas um efeito!