/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

//Fazendo o tiro ir na direcao do personagem
direction = point_direction(x, y, obj_nave.x, obj_nave.y);

//Fazendo o tiro ficar com o angulo certo
//O +90 e por que, por padrao, o angulo das imagens
//comeca na direita dela, com 0 graus, e como a sprite
//do tiro, está virada para baixo, para setar a posicao
//dela em 0 graus e o direction ficar correto, e necessario
//adicionar 90 graus com o direction
image_angle += direction + 90;  