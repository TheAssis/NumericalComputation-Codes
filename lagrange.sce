// Lagrange Interpolation
// Input: Column vectors of points (x, y) of function to be interpolated 
// and domain value p where the function will be evaluated. 
// Outputs: Evalutation f(p).
// code based on Numerical Computation class notes.
// Huge thanks to Professors Raissa Tavares, Rex Medeiros, 
// Marcelo Nogueira and Marconi Rodrigues.

function S = lagrange(x,y,p)
    [linhas ,colunas] = size(x);
    S = 0;
    //somatorio
    for i = 1 : linhas
        L = 1;
        //produtório
        for j = 1:linhas
            if i ~= j then
                L = L*( ( p - x(j) ) / ( x(i) - x(j) ) );
            end
        end
        S = S + y(i)*L
    end
endfunction
