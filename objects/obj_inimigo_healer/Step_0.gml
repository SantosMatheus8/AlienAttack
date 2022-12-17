/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(instance_exists(obj_boss))
{
	if(image_alpha >= 0.8)
	{
		instance_create_layer(x, y,  "Instances", obj_tiro_healer);
	}
	direction = point_direction(x, y, obj_boss.x, obj_boss.y);

	image_angle = direction + 180;  

	image_alpha += 0.01;
}

if(escala >= 1.1 || escala < 1)
{
	aumento_escala *= -1;
}
escala += aumento_escala;


image_xscale = escala;
image_yscale = escala;


