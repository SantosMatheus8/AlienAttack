/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(!trocou_room)
{
	alpha += 0.01;
}
else 
{
	alpha -= 0.01
}
	
if(alpha >= 1 && !trocou_room)
{
	room_goto(destino);	
	trocou_room = true;
}

if(trocou_room && alpha < 0)
{
	instance_destroy();
}








