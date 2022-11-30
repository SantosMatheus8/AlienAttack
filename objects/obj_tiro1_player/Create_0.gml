/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vspeed = - 10;

image_yscale = 3;

//Esse decorator passado em baixo, e pro gamemaker
//entender e meio q colocar um auto complete melhor
//com o nosso metodo criado
///@method impacto(inimigo, pontos)
impacto = function(inimigo, pontos)
{ 
	if(instance_exists(obj_controller))
	{
		obj_controller.ganha_pontos(pontos);
	}
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_tiro_impacto);
	instance_destroy(inimigo);
	instance_create_layer(inimigo.x, inimigo.y, "Instances", obj_explosao);

	if(obj_nave.tiro_level == 4)
	{
		cria_fragmentos_tiro();
	}
}

///@method cria_fragmentos_tiro()
cria_fragmentos_tiro = function()
{
	var fragmento1 = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento1.image_angle = direction + 0;  
	fragmento1.hspeed = 10;
	fragmento1.vspeed = 0;

	var fragmento3 = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento3.image_angle = direction + 180;
	fragmento3.hspeed = -10;
	fragmento3.vspeed = 0;
	
	var fragmento4 = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento4.image_angle = direction + 270;  
	fragmento4.vspeed = 10;
	
	var fragmento5 = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento5.image_angle = direction + 45;  
	fragmento5.hspeed = 10;
	
	var fragmento6 = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento6.image_angle = direction + 135;  
	fragmento6.hspeed = - 10;
	show_debug_message(fragmento6.direction)
	
	var fragmento7 = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento7.image_angle = direction + 225;  
	fragmento7.hspeed = - 10;
	fragmento7.vspeed = 10;
	
	var fragmento8 = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento8.image_angle = direction + 315;  
	fragmento8.hspeed = 10;
	fragmento8.vspeed = 10;
}




