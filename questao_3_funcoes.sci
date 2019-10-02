function z = f(vector_x)
    z = vector_x(1)*vector_x(1) -sin(vector_x(2)) + 1;
endfunction

function grad = del_f(vector_x)
    grad(1) = 2*vector_x(1);
    grad(2) = -cos(vector_x(2));
endfunctions

function H = hessian(vector_x)
    H = [2 0;0 sin(vector_x(2))];
endfunction

function dot = inner(vector_x)
    dot = sqrt(sum(vector_x.*vector_x));
endfunction

function a = alpha(grad, H)
    numerador = (inner(grad))^2;
    denominador = grad'*H*grad;
    a = 0.5*(numerador/denominador);
endfunction
