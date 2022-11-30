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
		cria_tiro4();
	}
}

///@method cria_fragmentos(direcao)
cria_fragmentos = function(direcao)
{
	var fragmento = instance_create_layer(x, y, "Instances", obj_fragmento_tiro);
	fragmento.direction = direcao;
	fragmento.image_angle = fragmento.direction - 90;  
}

///@method cria_tiro4()
cria_tiro4 = function()
{
	var direcao = 0;
	repeat(7)
	{	
		cria_fragmentos(direcao);
		if(direcao == 45)
		{
			direcao += 90
		}
		else
		{
			direcao += 45;
		}
	}
}


