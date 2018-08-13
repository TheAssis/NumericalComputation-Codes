function w = tsen(x,n)
    denominador = 0;
    numerador = denominador;
    soma = 0;
    for i=0:1:n
        denominador = meuFatorial(2*i+1);
        numerador = ((-1)^i) * (x^(2*i+1));
        //disp('o numerador vale ' + string(numerador));
        //disp('e o denominador vale ' + string (denominador));
        soma = soma + numerador/denominador;
    end
        w = soma;
        disp('o valor que eu calculei vale '+string(w));
        disp('o valor da função interna eh igual a ' +string(sin(x)));
        
        err_relativo = abs((sin(x)-w))/sin(x);
        
        disp('eis o valor do erro relativo '+ string(err_relativo));
endfunction
