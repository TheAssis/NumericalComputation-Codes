function [last_x, n_max_it, last_error] = regula_falsi(a,b,x, delta)
    // code by Mateus de Assis Silva
    // for more info, go to github.com/mtxslv/numericalcomputation
    
    exec('~\Documents/axis/f.sci')
    
    fa = f(a);
    fb = f(b);
    
    last_x = a - fa*((b-a)/(fb-fa));    
    errr = (x - last_x)/x;
    
    if (fa*fb)>0 then
        disp('Same signs, no zero found');
    end
    
    while (errr > delta)
        last_x = a - fa*((b-a)/(fb-fa));          
        if(f(last_x)*f(a)<0) then
           b = last_x;
        else
            a = last_x;
        end
        n_max_it = n_max_it+1;
    end    
endfunction
