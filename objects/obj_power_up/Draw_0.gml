/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

//Fazendo o efeito
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + 0.4, image_yscale + 0.4, image_angle, cor, 1);
gpu_set_blendmode(bm_normal);







