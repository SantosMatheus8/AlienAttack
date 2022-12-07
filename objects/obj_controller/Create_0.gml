/// @description Inicia criacao de inimigos
// Você pode escrever seu código neste editor

//Randomizando o jogo
randomize();

alarm[0] = 60;
alarm[1] = 60;

timer_inimigo1 = 120;
timer_inimigo2 = 180;

timer_minimo_inimigo1 = timer_inimigo1 * 0.60;
timer_minimo_inimigo2 = timer_inimigo2 * 0.60;

pontos = 0;

level = 1;

proximo_level = 100;

//Esse decorator passado em baixo, e pro gamemaker
//entender e meio q colocar um auto complete melhor
//com o nosso metodo criado
///@method ganha_pontos(quantidade_pontos)
ganha_pontos = function(quantidade_pontos)
{
	pontos += quantidade_pontos;
}
 



