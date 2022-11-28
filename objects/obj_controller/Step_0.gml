/// @description Controla level
// Você pode escrever seu código neste editor

if(pontos > proximo_level)
{
	level++;
	proximo_level *= 2;
	
	if(level > 2)
	{
		if(timer_inimigo1 > timer_minimo_inimigo1)
		{
			timer_inimigo1 *= 0.90;
		}
	
		if(timer_inimigo2 > timer_minimo_inimigo2)
		{
			timer_inimigo2 *= 0.95;
		} 
	}
	
}











