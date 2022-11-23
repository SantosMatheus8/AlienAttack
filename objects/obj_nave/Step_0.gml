/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Movimentacao do personagem
var cima, baixo, esquerda, direita;

cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
esquerda = keyboard_check(ord("A"));
direita = keyboard_check(ord("D"));

x -= esquerda * velocidade;
x += direita * velocidade;
y -= cima * velocidade;
y += baixo * velocidade;









