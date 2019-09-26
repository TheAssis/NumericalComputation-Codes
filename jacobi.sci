// Jacobi method for a system Ax = b.
// Input: The A matrix and b vector, the initial solution x0,
// max error T and max iterations number N.
// Outputs: x vector with max error T and the max number of iterations.
// code based on Numerical Computation class notes.
// Huge thanks to Professors Raissa Tavares, Rex Medeiros, 
// Marcelo Nogueira and Marconi Rodrigues.

function [x, cont] = jacobi(A, b, x0, T, N)
    [linhas, colunas] = size(A);
    cont = 0;
    xa = x0;
    xn = x0;
    errr = max(abs(xn-xa))/max(abs(xn));
    while(1)
        xa = xn;
        for i =1:linhas
            soma = 0;
            for j = 1:linhas
                if j<>i then
                    soma = soma + A(i,j)*xa(j);
                end
            end
            xn(i) = (b(i) - soma)/A(i,i);    
        end
        errr = max(abs(xn-xa))/max(abs(xn));
        cont = cont + 1;
        if(errr<T || cont == N)then
            break;
        end
    end
    x = xn;    
endfunction
