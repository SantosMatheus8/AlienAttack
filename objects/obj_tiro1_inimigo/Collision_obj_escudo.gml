/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

instance_destroy();
instance_create_layer(x,y, "Instances", obj_tiro_inimigo_impacto);



if(other.vida <= 1)
{
	instance_destroy(other);
}

other.image_index++;
other.vida--;






