/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vspeed = - 10;

///@method impacto(inimigo, pontos)
impacto = function(inimigo, pontos)
{ 
	if(instance_exists(obj_controller))
	{
		obj_controller.ganha_pontos(pontos);
	}
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_tiro_impacto);
	instance_destroy(inimigo);
	instance_create_layer(inimigo.x, inimigo.y, "Instances", obj_explosao);
}






