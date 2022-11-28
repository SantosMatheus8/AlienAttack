/// @description Controla tiro e movimentacao
// Você pode escrever seu código neste editor

//Movimentacao do personagem
var cima, baixo, esquerda, direita, tiro;

cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
esquerda = keyboard_check(ord("A"));
direita = keyboard_check(ord("D"));
tiro = keyboard_check_pressed(vk_space); 

x -= esquerda * velocidade;
x += direita * velocidade;
y -= cima * velocidade;
y += baixo * velocidade;

if(tiro)
{
	instance_create_layer(x - 38, y - 20, "Instances", obj_tiro1_player);	
	instance_create_layer(x + 44 , y - 20, "Instances", obj_tiro1_player);
}







