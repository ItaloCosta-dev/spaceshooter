layer_sequence_create("Seq_inimigos", 0, 0, ondas[atual]); // Criando os inimigos da sequência
alarm[0] = 320; // Reiniciando o alarm em 320 frames

if (atual < array_length(ondas) -1) // Enquanto tiver ondas vai gerando
{
	atual++; // Vai mandando ondas
}