// Fourier Series Personal Project
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

