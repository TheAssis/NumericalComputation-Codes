// algorithm for retroative resolution
// inpout: Coeficient matrix (superior triangular) A and vector b 
// output: x vector that solves the system

// code based on Numerical Computation class notes.
// Huge thanks to Professors Raissa Tavares, Rex Medeiros, 
// Marcelo Nogueira and Marconi Rodrigues.

function x =res_ret(A, b)
    [linhas, colunas] = size(A)
    for i = linhas:-1:1
        soma = 0;
        for j = i+1:colunas
            soma = soma +x(j)*A(i,j);
        end
        x(i) = (b(i)- soma)/A(i,i);
    end
endfunction
