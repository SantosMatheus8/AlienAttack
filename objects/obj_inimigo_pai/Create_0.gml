/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vspeed = 2;

alarm[0] = 60;

///@method dropa_item(_chance, _x, _y)
dropa_item = function(_chance, _x, _y)
{
	var valor = random(100);
	
	if(valor < _chance)
	{
		if(_y < 100)
		{
			_y += 100;
		}
		instance_create_layer(_x, _y, "Instances", obj_power_up);
		
	}
}






