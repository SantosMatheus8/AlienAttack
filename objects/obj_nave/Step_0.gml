/// @description Controla tiro e movimentacao
// Você pode escrever seu código neste editor

//Movimentacao do personagem
var cima, baixo, esquerda, direita, tiro;

cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
esquerda = keyboard_check(ord("A"));
direita = keyboard_check(ord("D"));
tiro = keyboard_check(vk_space); 

x -= esquerda * velocidade;
x += direita * velocidade;
y -= cima * velocidade;
y += baixo * velocidade;

//Faz os disparos ficarem automaticos enquanto o jogador
//segura espaco, o alarm nao tem codigo nenhum, so
//estamos usando ele como temporizador. (quando o
// alarm esta desavivado, o valor dele e -1)
if(tiro && alarm[0] == -1)
{
	if(tiro_level == 1)
	{
		alarm[0] = tempo_tiro * 2; 
		
		cria_tiro1();
	}
	else if(tiro_level == 2)
	{
		alarm[0] = tempo_tiro; 
		
		cria_tiro1();
	}
	else if(tiro_level == 3)
	{
		alarm[0] = tempo_tiro; 
		
		cria_tiro1();

		instance_create_layer(x , y - 20, "Instances", obj_tiro2);
	}
}



