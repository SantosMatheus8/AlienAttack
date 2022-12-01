/// @description Vai fazendo o power up sumir
// Você pode escrever seu código neste editor

image_alpha -= 0.2;

if(image_alpha <= 0.1)
{
	instance_destroy();
	
	instance_create_layer(x,y, "Instances", obj_explosao_power_up);
}


alarm[0] = 60;








