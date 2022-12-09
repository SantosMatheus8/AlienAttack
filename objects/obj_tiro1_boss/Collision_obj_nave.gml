/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

explode = true;

if(tempo_sem_contato <= 0)
{
	other.perde_vida();
	var screen_shake = instance_create_layer(x, y, "Instances", obj_screenshake);      
	screen_shake.shake = 1.5;
	tempo_sem_contato = 60;
}
tempo_sem_contato--;











