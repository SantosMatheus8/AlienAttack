/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vida = 3; 

velocidade = 8;

tempo_tiro = 15;

tiro_level = 1;

quantidade_escudos = 3;

//A variavel tempo_sem_contato impede que o player
//tome dano 60 vezes por segundo ao tocar no boss,
//com ela ele só vai tomar dano depois de 2 segundos
//apos tocar no boss
tempo_sem_contato = 0;

alarm[1] = 60;

///@method cria_tiro1()
cria_tiro1 = function()
{
	tiro1 = instance_create_layer(x - 40, y - 20, "Instances", obj_tiro1_player);	
	tiro2 = instance_create_layer(x + 42 , y - 20, "Instances", obj_tiro1_player);
}

///@method upgrade(chance)
upgrade = function(_chance)
{
	//Aumenta velocidade movimento
	if(velocidade < 10 && _chance <= 50)
	{
		velocidade += 0.5;
	}
	else if(_chance >= 90 && tiro_level < 5)
	{
		//Aumenta level tiro
		tiro_level++;
	}
	else if(tempo_tiro >= 7.5)
	{
		//Aumenta velocidade ataque
		tempo_tiro *= 0.95;
	}
	else
	{
		obj_controller.ganha_pontos(40);
	}
}

///@method perde_vida()
perde_vida = function()
{
	vida--;
	
	if(vida < 0)
	{
		instance_destroy();
	}
}

