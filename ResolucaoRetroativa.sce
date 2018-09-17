/* Resolução Retroativo, por Mateus de Assis
    Tal solução foi explicada e desenvolvida em sala de aula
    Disciplina de Computação Numérica - ECT2401 
*/

function x = ResRet(A,b) //resolução retroativa com matriz A e vetor independente b
    [l,c] = size(A) //quantidade de linhas e colunas da matriz A
    for i=l:-1:1
        soma = 0;
        for j=i+1:c
            soma = soma + A(i,j)*x(j);
        end
        x(i) = (b(i)-soma)/A(i,i);
    end
endfunction

// Para acessar uma posição (i,j) da matriz A, usamos a sintaxe A(i,j).
