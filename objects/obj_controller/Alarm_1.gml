/// @description Cria inimigo 2
// Você pode escrever seu código neste editor

if(level >= 2)
{
	var x_inimigo = random_range(70, 1850);
	
	instance_create_layer(x_inimigo, -100, "Instances", obj_inimigo2);	
}

alarm[1] = timer_inimigo2;









