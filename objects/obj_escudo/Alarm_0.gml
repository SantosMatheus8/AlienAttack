/// @description Destroi o escudo apos um tempo
// Você pode escrever seu código neste editor

image_alpha -= 0.1;

if(image_alpha <= 0.4)
{
	instance_destroy();
}

alarm[0] = 60;











