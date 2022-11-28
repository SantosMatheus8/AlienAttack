/// @description Cria inimigo 1
// Você pode escrever seu código neste editor

if(level == 1)
{
	timer_inimigo1 = 60;
}
if(level == 2)
{
	timer_inimigo1 = 120;
}

var x_inimigo = random_range(70, 1850);

instance_create_layer(x_inimigo, -100, "Instances", obj_inimigo1);

alarm[0] = timer_inimigo1;








