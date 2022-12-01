/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

velocidade = 5;

tempo_tiro = 15;

tiro_level = 5;

///@method cria_tiro1()
cria_tiro1 = function()
{
	tiro1 = instance_create_layer(x - 38, y - 20, "Instances", obj_tiro1_player);	
	tiro2 = instance_create_layer(x + 44 , y - 20, "Instances", obj_tiro1_player);
}

///@method upgrade(tipo_upgrade)
upgrade = function(tipo_upgrade)
{
	//Aumenta velocidade movimento
	if(chance <= 50)
	{
		velocidade += 0.5;
	}
	else if(chance > 50 && chance < 90)
	{
		//Aumenta velocidade ataque
		tempo_tiro *= 0.95;
	}
	else if(chance >= 90)
	{
		//Aumenta level tiro
		tiro_level++;
	}
}
