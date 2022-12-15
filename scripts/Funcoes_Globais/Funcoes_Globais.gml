// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function Impacto_boss(){
	//Perdendo vida
	if(vida_atual > 0)
	{
		vida_atual -= 2;
	}
	else
	{
		instance_destroy();
	}

	instance_create_layer(other.x, other.y, "Instances", obj_tiro_impacto);
	instance_destroy(other);

	if(obj_nave.tiro_level == 4)
	{
		obj_tiro1_player.cria_tiro4();
	}
	
	if(obj_nave.tiro_level == 5)
	{
		obj_tiro1_player.cria_tiro5();
	}
}

//Destruindo a sequence do boss
function destroi_sequence()
{
	var sequences = layer_get_all_elements("Sequences_boss");
	layer_sequence_destroy(sequences[0]);

	instance_create_layer(960, 256, "Boss", obj_boss);
}

function cria_sequence_vitoria()
{
	layer_sequence_create("Sequences", obj_nave.x ,obj_nave.y , sq_final_level);
	if(instance_exists(obj_nave))
	{
		instance_destroy(obj_nave, false);
	}
}

function cria_transicao()
{
	var transicao = instance_create_layer(0, 0, "Instances", obj_transicao);
	transicao.destino = Room_inicio;
}