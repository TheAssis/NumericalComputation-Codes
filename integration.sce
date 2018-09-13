//integration

function c = f(x)
    c = x
endfunction

//exemplo
a=0;
b=1;
valor_exemplo = intg(a,b,f);
disp("Valor exemplo = ");
disp(valor_exemplo);

//usuario
a = input("Limite inicial: ");
b = input("Limite final: ");
valor = intg(a,b,f);
disp("Valor = ");
disp(valor);
