// Círculo centrado, por Mateus de Assis
/*
    Aqui desenha-se um arco circular (superior ou inferior) e define-se
 as coordenadas de seu centro.
    Para se utilizar a função, deve-se definir um raio (positivo
 ou negativo), o valor de x em que ele estará centrado e se o arco 
 a ser desenhado é positivo (flag = 1) ou não(fag = -1). A chamada 
 da função segue no exemplo:    
    --> r = 1
    -->xcentro = 10
    -->ycentro = 10
    -->flag = 1
    -->[x,y] = circle(r, xcentro, ycentro, flag)
    -->flag = -1
    -->[x,y] = circle(r,xcentro,flag)
    Também pode-se, caso preferência, plotar o resultado obtido;
    -->plot(x,y)
*/

function [xsc,ysc] = cencircle(r,xdes,ydes, flag) 
    r = abs(r);
    if flag < 0 then
        flag = -1;
    else
        flag = 1;
    end
    xsc = -r:.01:r; //o círculo deve estar definido nos limites de seu raio
    for i = 1: length(xsc)
        ysc(i) = ydes + flag*sqrt(r*r-xsc(i)*xsc(i)); // o y do circulo centrado na origem
        xsc(i) = xsc(i)+xdes; //deslocando o circulo no eixo x
    end
endfunction


// Atenção! Sendo x um vetor, a chamada x*x significa multiplicação 
// vetorial e poderá resultar no erro de incompatibilidade dimensional
// (!error 6). Assim, dado que queremos elevar cada coordenada a uma 
// dada potência, utilizaremos um laço for nas linhas 4~>6. Para a 
// manipulaçao vetorial, vale saber que o índice começa em 1 e acaba na
// quantidade de termos existente.
