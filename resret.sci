function [x_vector] = resret(A_matrix, b_vector)
    // suppose we have an upper-triangular matrix A_matrix,
    // with b_vector as independent terms.
    // We can apply Retroative Resolution, going from down 
    // to up.
    // The answer of this system is x_vector.
    
    // Coded by Mateus de Assis
    // Based on the explanations of Rayssa Tavares, on a 
    // Numerical Experimental class.
     
    [num_linhas, num_colunas] = size(A_matrix);
    for i = num_linhas:-1:1
        soma = 0;
        for j = i + 1 : 1 : num_colunas
            soma = soma + A_matrix(i,j)*x_vector(j);
        end
        x_vector(i) = (b(i) - soma)/A_matrix(i,i);
    end
endfunction
