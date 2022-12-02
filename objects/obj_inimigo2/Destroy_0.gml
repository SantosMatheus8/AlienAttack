/// @description Roda quando ele e destruido
// Você pode escrever seu código neste editor

//O numero passado para a funcao, e a probabilidade
//dele dropar um power up
obj_inimigo_pai.dropa_item(15, x, y);

//Somando pontos
if(instance_exists(obj_controller))
{
	obj_controller.ganha_pontos(20);
}








