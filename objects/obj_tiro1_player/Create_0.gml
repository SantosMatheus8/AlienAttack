/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vspeed = - 10;

image_yscale = 3;

//Esse decorator passado em baixo, e pro gamemaker
//entender e meio q colocar um auto complete melhor
//com o nosso metodo criado
///@method impacto(inimigo)
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






