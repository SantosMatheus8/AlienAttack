/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(estado_atual == "estado 1")
{
	if(tempo_tiro <= 0)
	{
		instance_create_layer(x - 140, y, "Tiro_Boss", obj_tiro1_boss);
		instance_create_layer(x + 140, y, "Tiro_Boss", obj_tiro1_boss);
		tempo_tiro = 120;
	}
	tempo_tiro--;
}










