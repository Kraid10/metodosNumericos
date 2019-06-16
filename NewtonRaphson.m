%Aproximacion de raices
%Metodo de Newton Raphson
%realizado por: Kevin Raí Salazar
% 7690 - 15 - 3698
clear, clc

fx=input('Ingrese la funcion: ');
syms x
f = inline(fx);
deriva=diff(fx,x);
df=inline(deriva);
tolerancia=input('Ingresa la tolerancia: ');
error=50;
xi=input('Ingresa el valor de x inicial: ');
itera=0;
disp('  n     xi      error');

while(error>tolerancia)
   fprintf('\t%i\t%4.4f\t%4.4f\n',itera,xi,error);
   itera = itera+1;
   xa = xi;
   xi = xi-(f(xi)/df(xi));
   error = abs((xi-xa)/xi);
end

fprintf('Solución:\n xa=%8.4f\n',xa);
fprintf('error=%8.4f\n',error);
