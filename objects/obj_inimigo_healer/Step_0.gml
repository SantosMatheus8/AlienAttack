/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(image_alpha >= 0.8)
{
	instance_create_layer(x, y,  "Instances", obj_tiro_healer);
}

if(instance_exists(obj_boss))
{
	direction = point_direction(x, y, obj_boss.x, obj_boss.y);
}

image_angle = direction + 180;  

image_alpha += 0.01;










