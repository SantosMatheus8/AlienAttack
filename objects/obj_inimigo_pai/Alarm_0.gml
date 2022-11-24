/// @description Atirar
// Você pode escrever seu código neste editor

//Ele so comeca a atirar quando aparece na tela
if(y >= 0)
{
	instance_create_layer(x,y, "Instances", obj_tiro1_inimigo);
}

alarm[0] = random_range(1, 1.5) * 60;









