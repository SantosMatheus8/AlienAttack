/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.inimigos_derrotados++;

//Somando pontos
if(instance_exists(obj_controller))
{
	obj_controller.ganha_pontos(800);
}

//Criando animacao de morte
layer_sequence_create("Sequence_boss_morte", x, room_height / 2, sq_boss_morte);












