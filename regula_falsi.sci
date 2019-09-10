function [c, n_max_it, errr] = regula_falsi(a,b, delta)
    // code by Mateus de Assis Silva
    // for more info, go to github.com/mtxslv/numericalcomputation
    
    //exec('~\Documents/axis/f.sci')
    
    fa = f(a);
    fb = f(b);
    n_max_it = 0;
    
    c = a - fa*((b-a)/(fb-fa));    
    errr = (b-a)/a;
    
    if (fa*fb)>0 then
        disp('Same signs, no zero found');
    else
        if (f(c)*f(a)<0) then
            b = c;
        else
            a = c;
        end
        n_max_it = n_max_it + 1;
    end
    
    while (errr > delta)
        c = a - fa*((b-a)/(fb-fa));
        fa = f(a);
        fb = f(b);
        if(f(c)*f(a)<0) then
           b = c;
        else
            a = c;
        end
        n_max_it = n_max_it+1;
        errr = abs(b-a)/a;
        disp('x = ');
        disp(c);
        disp('iteration =');
        disp(n_max_it);
    end    
endfunction
