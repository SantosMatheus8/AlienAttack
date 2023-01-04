/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Esse if faz a sprite voltar ao normal apos ele
//sair do estado 4
if(estado_atual != estados.estado4)
{
	sprite_index = spr_boss;
}

if(estado_atual == estados.estado1)
{
	estado_1();
}
else if(estado_atual == estados.estado2)
{
	estado_2();
}
else if(estado_atual == estados.estado3)
{
	estado_3();
}
else if(estado_atual == estados.estado4)
{ 
	//Trocando de sprite
	sprite_index = spr_boss_escuro;
	hspeed = 0;
	
	alarm[0] = alarme0;
	alarme0--;
	
	alarm[1] = alarme1;
	alarme1--;
}

//Fazendo o boss˜mudar de estado dependendo da vida
//dele
if(vida_atual <= (vida_max * 0.8) && vida_atual > (vida_max * 0.6))
{
	estado_atual = estados.estado2;
}
else if (vida_atual <= (vida_max * 0.6) && vida_atual > (vida_max * 0.4) && estado_atual != "estado 4")
{
	estado_atual = estados.estado3;
}
else if (vida_atual <= (vida_max * 0.4) && !entrou_estado4)
{
	estado_atual = estados.estado4;
}





