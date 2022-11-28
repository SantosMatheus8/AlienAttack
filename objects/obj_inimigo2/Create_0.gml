/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x_inicial = x;

x_maximo = random_range(1200, 1600);
x_minimo = random_range(320, 720);

velocidade_maxima = random_range(3, 5);
velocidade_minima = random_range(-3, -5);

if(place_meeting(x, y, obj_inimigo1))
{
	instance_destroy();
}



// Inherit the parent event
event_inherited();

