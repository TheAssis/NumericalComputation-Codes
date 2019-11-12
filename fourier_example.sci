// Fourier Series Personal Project
// Code by mtxslv

// In the book "Numerical Analysis", by Burden&Faires, chapter 8,
// The Fourier Series are introduced using the Least Squares approach.
// One of the examples given is to approximate the function f(x) = |x|.
// Now let's see if the derived result using code.

function y = cos_kx(x,k)
    // calculate cos(k*x), where k is a scalar and
    // x is a vector, for each element in x
    x_aux = k*x;
    y = cos(x_aux);
endfunction

function coef = a_k(k)
    //a_k coefficients for the serie
    coef = ((-1)^k-1)/k^2;
endfunction

function S = fourier_abs(x,n)
    S = %pi/2;
    soma = 0;
    a = 0;
    y = zeros(x);
    if(n<=0)
        S = %nan;
    else
        for k = 1:1:n
            a = a_k(k);
            y = cos_kx(x,k);
            soma = soma + a*y;
        end
        S = S + (2/%pi)*soma;
    end
endfunction
