/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Se a nave nao existe ele faz a transicao e vai pro
//inicio do jogo, e se a pontuacao for recorde, ele
//salve
if(!instance_exists(obj_nave))
{	
	var transicao = instance_create_layer(0, 0, "Instances", obj_transicao);
	transicao.destino = Room_inicio;
}











