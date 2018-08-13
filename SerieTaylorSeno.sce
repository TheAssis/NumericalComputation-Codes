clear, clc
function y = tsen(x,n) //serie de taylor para o seno
    for i = 0:1:n
        y = (x*(-1)^n)/ factorial(n);
    end
    disp('valor calculado pela funcao criada= ' + string(x));
    disp('valor calculado pela funcao interna do scilab' + string (sin(x)));
    a = abs( sin(x)-y)/ sin(x);
    disp('erro relativo = ' + string(a));
endfunction
