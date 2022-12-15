//Codigo que roda sempre que a room e iniciada
//Iniciar as variaveis globais

//Pontuacao mais alta
global.pontuacao_maxima = 0;

//Mortes do player
global.player_total_mortes = 0;

//Inimigos derrotados
global.inimigos_derrotados = 0;

//Indo para room inicial
room_goto(Room_inicio);

//Esse codigo so roda uma vez quando o jogo abre e nunca
//mais roda, porem as variaveis foram inicializadas