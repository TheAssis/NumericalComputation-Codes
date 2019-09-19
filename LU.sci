// L, U decomposition, using Gauss elimination.
// Input: The matrix to be spplited apart.
// Outputs: Lower an Upper matrix.
// code based on Numerical Computation class notes.
// Huge thanks to Professors Raissa Tavares, Rex Medeiros, 
// Marcelo Nogueira and Marconi Rodrigues.
function [L,U]= LU(A)
    [linhas, colunas] = size(A)
    L = eye(linhas, colunas)
    for i=1:linhas-1
        pivo = A(i,i);
        for j = i+1:colunas
            L(j,i) = A(j,i)/pivo;
            A(j,:) = A(j,:) - L(j,i)*A(i,:);
        end    
    end
    U = A;
endfunction
