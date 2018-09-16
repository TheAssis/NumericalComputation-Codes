// Exemplo de campo vetorial, por Mateus de Assis
// O campo vetorial 2D aqui plotado é dado por <sen(%pi*x), 0>

//using meshgrid to get fx and fy
clf()
x = linspace(0,1,12); // gerar 12 pontos linearmente espaçados entre 0 e 1
y = linspace(0,1,12); // gerar 12 pontos linearmente espaçados entre 0 e 1
[X,Y] = meshgrid(x,y); //gerar domínio da função
fy = 0.*Y // a coordenada y do campo vetorial é nula
fx = sin(%pi*X); // a coordenada x do campo vetorial é nula
champ(x,y,fx',fy'); //plotando o campo vetorial
