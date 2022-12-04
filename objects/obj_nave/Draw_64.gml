/// @description Desenha vida
// Você pode escrever seu código neste editor

var altura_gui = display_get_gui_height();

//Como nao vai ser uma nave, e sim o desenho da nave,
//sao usados valores exatos e nao valores como 
//image_xscale, que sao valores do objeto nave
var x_vida = 40;

repeat(vida)
{
	draw_sprite_ext(spr_nave, 0, x_vida, altura_gui - 40, 0.3, 0.3, 0, c_white, 0.9);
	x_vida += 40;
}










