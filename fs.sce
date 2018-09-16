// função fs, por Mateus de Assis
/*
    A seguinte função tem por objetivo mapear a posição no eixo Oy de uma
máquina de polimento baseada na posição x dessa mesma máquina. Tal máquina 
oscila seguindo uma função seno e seus parâmetros são: lambda = "comprimento
de onda relativo ao movimnto" ; a = "amplitude de movimento" e xc = "posição
 no eixo Ox".
    Para ser chamada, deve-se definir um vetor xc, como se segue:
    -->xc = 0:.1:2*%pi
    também precisa se definir uma amplitude e um comprimento:
    --> a = 15
    --> l = 2
    depois basta chamar a função:
    --> yc = fs(xc, l, a)
    Vale saber que será retornado algo semelhante a um vetor , o qual pode 
ser plotado junto a xc:
    --> plot(xc,yc)
*/

function yc = fs(xc,lambda,a)
    if lambda == 0 then
        yc = 0;
        disp("there is not division by 0");
    else
    yc =(a/2)*sin((xc*2*%pi)/lambda);
    end
endfunction
