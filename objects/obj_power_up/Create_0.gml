/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

speed = 0.5;

direction = random(359);

//A chance fica entre 0 e 100
chance = random(100);

if(obj_nave.tiro_level >= 5)
{
	chance = random(89);
}

if(obj_nave.velocidade >= 10)
{
	chance = random_range(51,100);
}

if(obj_nave.tempo_tiro <= 7.5)
{
	if(chance > 50 && chance < 90)
	{
	chance = random(50);
	}
}

//A cor do tiro muda de acordo com o upgrade
	if(chance <= 50)
	{
		//Velocidade
		cor = c_blue;
	}
	else if(chance > 50 && chance < 90)
	{
		//Tempo do tiro
		cor = c_yellow;
	}
	else if(chance >= 90)
	{
		//Level do tiro
		cor = c_red;
	}