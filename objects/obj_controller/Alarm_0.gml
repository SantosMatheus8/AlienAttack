/// @description Cria inimigo 1 e boss
// Você pode escrever seu código neste editor

if(level == 1)
{
	timer_inimigo1 = 60;
}
else if(level == 2)
{
	timer_inimigo1 = 120;
}

var x_inimigo = random_range(70, 1850);

if(level < level_criar_boss)
{
	instance_create_layer(x_inimigo, -100, "Instances", obj_inimigo1);
	alarm[0] = timer_inimigo1;
}

if(level == level_criar_boss && !criou_boss)
{
	criou_boss = true;
	layer_sequence_create("Sequences_boss", 960 ,512 , sq_boss_entrando);
}




