/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

velocidade = 5;

tempo_tiro = 15;

tiro_level = 2;

///@method cria_tiro1()
cria_tiro1 = function()
{
	tiro1 = instance_create_layer(x - 38, y - 20, "Instances", obj_tiro1_player);	
	tiro2 = instance_create_layer(x + 44 , y - 20, "Instances", obj_tiro1_player);
}


