/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Se no inicio do jogo ele estiver de um lado da tela,
// em algum momento ele vai pro outro lado
if(x_inicial < room_width / 2)
{
//No y > 200 ele comeca a se movimentar e para no 
// x_maximo, que e um valor entre 1200 e 1600
//ou x = 320 | 720, para nao sair da tela
	if(y > 200 && x < x_maximo)
	{
		hspeed = velocidade_maxima;
	}
	else 
	{
		hspeed = 0;
	}
}
else
{
	if(y > 200 && x > x_minimo)
	{
		hspeed = velocidade_minima;          
	}
	else 
	{
		hspeed = 0;
	}
}



// Inherit the parent event
event_inherited();

