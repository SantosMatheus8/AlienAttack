/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Ele so executa o codigo do dano no boss se ele 
//estiver em um estado diferente do 4 (no estado 4
//ele vai ser curar)
if(estado_atual != "estado 4")
{
	Impacto_boss();
}
else 
{
		instance_create_layer(other.x, other.y, "Instances", obj_tiro_impacto);
		instance_destroy(other);
}










