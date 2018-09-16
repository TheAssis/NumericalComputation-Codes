// Círculo, por Mateus de Assis
/*
    Aqui desenha-se tão somente um arco circular (superior ou
inferior)
    Para se utilizar a função, deve-se definir um raio (positivo
 ou negativo) e se o arco a ser desenhado é positivo (flag = 1) ou
 não(fag = -1). A chamada da função segue no exemplo:    
    --> r = 1
    -->flag = 1
    -->[x,y] = circle(r,flag)
    -->flag = -1
    Também pode-se, caso preferência, plotar o resultado obtido;
    -->plot(x,y)
*/

function [xsc,ysc] = circle(r, flag)
    r = abs(r);
    xsc = -r:.01:r;
    for i = 1: length(xsc)
        ysc(i) = sqrt(r*r-xsc(i)*xsc(i));
    end
    if flag == -1 then
        ysc = -ysc
    elseif flag == 1 then
        ysc = ysc;
    end
endfunction


// Atenção! Sendo x um vetor, a chamada x*x significa multiplicação 
// vetorial e poderá resultar no erro de incompatibilidade dimensional
// (!error 6). Assim, dado que queremos elevar cada coordenada a uma 
// dada potência, utilizaremos um laço for nas linhas 4~>6. Para a 
// manipulaçao vetorial, vale saber que o índice começa em 1 e acaba na
// quantidade de termos existente.
