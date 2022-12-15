/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Somando pontos
if(instance_exists(obj_controller))
{
	obj_controller.ganha_pontos(80);
}

global.inimigos_derrotados++;

instance_create_layer(x, y, "Instances", obj_explosao_healer);










