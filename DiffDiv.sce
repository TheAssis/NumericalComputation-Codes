// Code based on Numerical Computation class notes.
// Huge thanks to Professors Raissa Tavares, Rex Medeiros, 
// Marcelo Nogueira and Marconi Rodrigues.

// Divided Differences Table
// Input: x and y column vectors.
// Output: Coefficients for Newton's Interpolation method (first line of the table)
function [coef] = diffdiv(x,y)
    n = length(x);
    T = zeros(n,n);
    
    T(:,1) = y;
    
    for j = 2 : n // j stands for the column where the numbers are got
        for i=1 : n-j+1 // i stands for the line where the numbers are got
            T(i,j) = (T(i+1, j-1) - T(i,j-1)) / (x(i+j-1) - x(i));
        end
    end
    disp(T);
    coef = T(1,:);
endfunction
