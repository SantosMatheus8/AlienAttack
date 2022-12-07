/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

shake = 5;


treme_tela = function()
{
	//Movendo a tela no eixo x
	view_xport[0] = random_range(-shake, shake);
	//Movendo a tela no eixo y
	view_yport[0] = random_range(-shake, shake);
	
	shake *= 0.97;
}










