/// @description Controla tiro e movimentacao
// Você pode escrever seu código neste editor

//Movimentacao do personagem
var cima, baixo, esquerda, direita, tiro, escudo;

cima = max(keyboard_check(ord("W")), keyboard_check(vk_up));
baixo = max(keyboard_check(ord("S")), keyboard_check(vk_down));
esquerda = max(keyboard_check(ord("A")), keyboard_check(vk_left));
direita = max(keyboard_check(ord("D")), keyboard_check(vk_right));
tiro = keyboard_check(vk_space); 
escudo = keyboard_check_pressed(ord("E")); 

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
	else if(tiro_level == 3 || tiro_level == 4 || tiro_level == 5)
	{
		alarm[0] = tempo_tiro; 
		
		cria_tiro1();

		instance_create_layer(x , y - 20, "Instances", obj_tiro2);
	}
}

if(escudo && quantidade_escudos > 0 && !instance_exists(obj_escudo))
{
		var escudo_ativo = instance_create_layer(x , y, "Escudo", obj_escudo);

		escudo_ativo.nave = id;
		
		quantidade_escudos--;
}

//Impedindo o player de sair da tela 
x = clamp(x, 45, 1875);
y = clamp(y, 65, 1040);


//A variavel tempo_sem_contato impede que o player
//tome dano 60 vezes por segundo ao tocar no boss,
//com ela ele só vai tomar dano depois de 2 segundos
//apos tocar no boss
if(tempo_sem_contato >= 0)
{
	tempo_sem_contato--;
}