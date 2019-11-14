// Fourier Series Personal Project
// Code by mtxslv

// In the book "Numerical Analysis", by Burden&Faires, chapter 8,
// The Fourier Series are introduced using the Least Squares approach.

// This is another example, a classical one. The aim is to approximate the function
// f(x) = {0, -%pi < x < 0 ; 1, 0 < x < %pi}.
// Now let's see the derived result using code.

function y = sin_kx(x,k)
    // calculate cos(k*x), where k is a scalar and
    // x is a vector, for each element in x
    x_aux = k*x;
    y = sin(x_aux);
endfunction

function coef = a_k(k)
    //a_k coefficients for the serie
    coef = ((-1)^k-1)/k;
endfunction

function S = fourier_square(x,n)
    S = 1/2;
    soma = 0;
    a = 0;
    y = zeros(x);
    if(n<=0)
        S = %nan;
    else
        for k = 1:1:n-1
            a = a_k(k);
            y = sin_kx(x,k);
            soma = soma + a*y;
        end
        S = S - (1/%pi)*soma;
    end
endfunction

clf(0)
x = -%pi:0.1:%pi
for i=1:1:50
    clf(0)    
    y = fourier_square(x,i);
    plot(x,y)
    sleep(250)
end
