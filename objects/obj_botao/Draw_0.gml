/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();


//Definindo a fonte
draw_set_font(fnt_botoes);

//Centralizando a fonte
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


//Desenhando um texto no botao
draw_text(x, y, texto);

//Rerefinindo a fonte
draw_set_font(-1);
draw_set_valign(-1);











