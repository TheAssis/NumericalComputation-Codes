// Círculo deslocado, por Mateus de Assis
/*
    Aqui desenha-se um arco circular (superior ou inferior) e define-se
 a coordenada x de seu centro.
    Para se utilizar a função, deve-se definir um raio (positivo
 ou negativo), o valor de x em que ele estará centrado e se o arco 
 a ser desenhado é positivo (flag = 1) ou não(fag = -1). A chamada 
 da função segue no exemplo:    
    --> r = 1
    -->xcentro = 10
    -->flag = 1
    -->[x,y] = circle(r,xcentro,flag)
    -->flag = -1
    -->[x,y] = circle(r,xcentro,flag)
    Também pode-se, caso preferência, plotar o resultado obtido;
    -->plot(x,y)
*/

function [xsc,ysc] = discircle(r,xdes, flag) 
    r = abs(r);
    xsc = -r:.01:r; //o círculo deve estar definido nos limites de seu raio
    for i = 1: length(xsc)
        ysc(i) = sqrt(r*r-xsc(i)*xsc(i)); // o y do circulo centrado na origem
        xsc(i) = xsc(i)+xdes; //deslocando o circulo no eixo x
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
