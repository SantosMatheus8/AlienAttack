/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Perdendo vida
if(vida_atual > 0)
{
	vida_atual -= 2;
}
else
{
	instance_destroy();
}

	instance_create_layer(other.x, other.y, "Instances", obj_tiro_impacto);
	instance_destroy(other);

	if(obj_nave.tiro_level == 4)
	{
		obj_tiro1_player.cria_tiro4();
	}
	
	if(obj_nave.tiro_level == 5)
	{
		obj_tiro1_player.cria_tiro5();
	}














