/// @description Mostra pontos e level
// Você pode escrever seu código neste editor
	
draw_set_font(fnt_ponto_lvl);

if(instance_exists(obj_boss))
{
	//Desenhando pontos
	draw_text(80,60, "PONTOS : " + string(pontos));
	//Desenhando level
	draw_text(70,100,"LEVEL : " + string(level));
}
else 
{
	draw_text(80,40, "PONTOS : " + string(pontos));
	draw_text(74,80, "LEVEL  : " + string(level));
}

draw_set_font(-1);







