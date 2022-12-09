/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/*
Estado 1 :
Estado 2 :
Estado 3 :
*/ 
estado_atual = "estado 2";


//O tempo do tiro para o boss comecar a atirar, no step
//o tempo tiro e resetado para setar um intervalo
//entre os tiros 
tempo_tiro = 0;


velocidade = 5;
hspeed = velocidade;


cria_tiro_base = function()
{
	if(tempo_tiro <= 0)
	{
		instance_create_layer(x - 140, y, "Tiro_Boss", obj_tiro1_boss);
		instance_create_layer(x + 140, y, "Tiro_Boss", obj_tiro1_boss);
		tempo_tiro = 120;
	}
	tempo_tiro--;
}










