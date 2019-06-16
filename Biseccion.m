%Metodo de Biseccion
%realizado por: Kevin Raí Salazar
% 7690 - 15 - 3698

clear all

xi=input('Ingresa el valor de xi: ');
xu=input('Ingresa el valor de xu: ');
tol=input('Ingresa la tolerancia ');
fx=input('Ingresa la funcion f(x)=','s');
f=inline(fx);
e=1;
itera = 1;
xr=(xi+xu)/2;
disp('     n     xi      xu      xr      error');
while (e>tol)
    fprintf('\t%i\t%4.4f\t%4.4f\t%4.4f\t%4.4f\n',itera,xi,xu,xr,e);
    xr=(xi+xu)/2;
    e=abs((xu-xi)/2);
    itera = itera + 1;
    if f(xi)*f(xr)<0
        xu=xr;
    else
        xi=xr;
    end
end

fprintf('Solución:\n Xr=%8.5f\n',xr)
fprintf('f(Xr)=%8.5f\n',f(xr))
fprintf('error=%8.5f\n',e)