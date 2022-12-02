/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vspeed = - 12;

//Esse decorator passado em baixo, e pro gamemaker
//entender e meio q colocar um auto complete melhor
//com o nosso metodo criado
///@method impacto(inimigo)
impacto = function(inimigo, pontos)
{ 
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_tiro_impacto);
	instance_destroy(inimigo);
	instance_create_layer(inimigo.x, inimigo.y, "Instances", obj_explosao);
}

















