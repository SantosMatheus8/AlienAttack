/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


vspeed = - 10;

image_yscale = 3;

impacto = function()
{	
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_tiro_impacto);
}





