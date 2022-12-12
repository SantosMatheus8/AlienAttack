/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Esse if faz a sprite voltar ao normal apos ele
//sair do estado 4
if(estado_atual != "estado 4")
{
	sprite_index = spr_boss;
}

if(estado_atual == "estado 1")
{
	cria_tiro_base();
}
else if(estado_atual == "estado 2")
{
	estado_2();
}
else if(estado_atual == "estado 3")
{
	estado_3();
}
else if(estado_atual == "estado 4")
{ 
	//Trocando de sprite
	sprite_index = spr_boss_escuro;
	hspeed = 0;
}







