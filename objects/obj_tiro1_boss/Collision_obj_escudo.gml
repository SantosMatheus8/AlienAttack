/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

explode = true;

if(tempo_sem_contato <= 0)
{
	if(other.vida <= 1)
	{
		instance_destroy(other);
	}

	other.image_index++;
	other.vida--;
	tempo_sem_contato = 60;
}
tempo_sem_contato--;











