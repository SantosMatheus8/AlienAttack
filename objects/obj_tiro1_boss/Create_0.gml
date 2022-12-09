/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


explode = false;

//O tempo sem contato e o tempo que o player fica sem
//levar dano apos levar o tiro do boss. Como o tiro
//dele cresce com o tempo, o contato roda igual o step
//e mata o player instantaneamente, agora com o tempo
//sem contato sendo resetado toda vez que o player
//toma algum dano, ele so permite o player tomar dano
//do tiro do boss uma vez por segundo. Ele inicializa
//como zero para o primeiro dano ser instantaneo e os
//outros apenas apos um segundo.
tempo_sem_contato = 0;

///@method explode_tiro()
explode_tiro = function()
{
	vspeed = 0;
	image_xscale += 1;
	image_alpha *= 0.95

	if(image_alpha <= 0.1)
	{
		instance_destroy();
	}
}













// Inherit the parent event
event_inherited();

