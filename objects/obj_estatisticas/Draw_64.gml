/// @description Desenha estatisticas na tela
// Você pode escrever seu código neste editor


//Definindo a fonte
draw_set_font(fnt_estatisticas);

//A funcao roundo, faz pegar o numero real e retornar 
//inteiro
var _pontos = round(pontos);

//Desenhando pontos
draw_text(640, 260,  "Pontuação máxima : " + string(_pontos));

//Desenhando inimigos derrotados

draw_text(640, 360,  "Inimigos derrotados : " + string(global.inimigos_derrotados));

//Desenhando total de mortes
draw_text(640, 460, "Total de mortes : " + string(global.player_total_mortes));

//Resetando a fonte
draw_set_font(-1);


//Fazendo animacao da pontuacao subindo
if(pontos < global.pontuacao_maxima)
{
	 pontos += global.pontuacao_maxima / 100;
}









