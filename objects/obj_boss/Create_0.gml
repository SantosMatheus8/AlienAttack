/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/*
Estado 1 :
Estado 2 :
Estado 3 :
*/ 
estado_atual = "estado 3";


//O tempo do tiro para o boss comecar a atirar, no step
//o tempo tiro e resetado para setar um intervalo
//entre os tiros 
tempo_tiro1 = 0;

tempo_tiro2 = 0;

velocidade = 5;
hspeed = velocidade;


cria_tiro_base = function()
{
	if(tempo_tiro1 <= 0)
	{
		instance_create_layer(x - 140, y, "Tiro_Boss", obj_tiro1_boss);
		instance_create_layer(x + 140, y, "Tiro_Boss", obj_tiro1_boss);
		tempo_tiro1 = 120;
	}
	tempo_tiro1--;
}

estado_2 = function()
{
	cria_tiro_base();
	
	if(x < 300 || x > 1620)
	{
		hspeed *= - 1;
	}
}

estado_3 = function()
{
	if(tempo_tiro2 <= 0)
	{
		var tiro1 = instance_create_layer(x - 230, y + 100, "Tiro_Boss", obj_tiro1_inimigo);
		var tiro2 = instance_create_layer(x + 230, y + 100, "Tiro_Boss", obj_tiro1_inimigo);
		tiro1.image_xscale = 2;
		tiro1.image_yscale = 2;
		tiro2.image_xscale = 2;
		tiro2.image_yscale = 2;
		
		tempo_tiro2 = 60;
	}
	tempo_tiro2--;
	
	estado_2();
}







