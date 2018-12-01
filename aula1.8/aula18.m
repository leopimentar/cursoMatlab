syms x 
A =  [2*x^2+3*x+1 -2*x+10Resultado = subs(f,x,2)
 -2*x+10 4*x^2+x+2];
determinante = det(A);
coefs_poli = sym2poly(determinante);
Resultado = subs(f,x,2)

%% graficos
syms x 

f1 = x^2+3*x+5;
subplot(311)
ezplot(f1,[-10,10])
f2 = (x^2 + y^2 -1);
subplot(312)
ezplot(f2,[-1,1,-1,1])



syms t
xx = cos(2*t);
yy = sin(4*t);
subplot(313)
ezplot(xx,yy)

%% solução de equações
syms x
f = x^2 - 5*x + 6;
f_res = solve(f);
g = x*cos(x);
g_res = solve(g);
sol = solve('cos(2*x)+3*sin(x)=2');

%Solução para um determinado intervalo
f = @(x) x.*cos(x);
x0 = 0:1:5; % faixa
x = fsolve(f,x0) 

%% sistemas de equação pelo comando solve
syms x y
[x,y] = solve('2*x+3*y=2','-x+5*y=1')
% ou
syms x y
f1 = 2*x+3*y-2;
f2 = -x+5*y-1;
[a, b] = solve('-x+5*y=1', '2*x+3*y=2')
sys:= [-x+5*y=1, 2*x+3*y=2]
[a,b] = solve(sys, [x,y])
syms x y
a = solve('-x+5*y=1', '2*x+3*y=2', [x, y]);
solve('-x+5*y=1', '2*x+3*y=2', [x, y], VectorFormat)


syms x y t
f3 = 10*x+12*y+16*t
f4 = 5*x-y-13*t
[xt,yt]=solve(f3,f4,x,y)% em função de t
[tx,yx]=solve(f3,f4,t,y)% em função de x
[xy,ty]=solve(f3,f4,x,t)% em função de y

%% EDOs

sol = dsolve('Dx+2*x=4*t')

%%exercicio
m = 1;
c = 2;
k = 100;
ft = sin(t*(k/m)^(1/2));
cond = y(0) == 1;
sol = dsolve('D2y*m + c*Dy+k*y = ft', cond)

%% derivação simbólica
syms x t
f = exp(x^4)
f_deriv = diff(f)
g = 4*x^4 + 6*t^2
g_deriv = diff(g) %mantem t constante
g_deriv_t = diff(g,t) %com relação a (x cte.)


%% integração simbólica
syms x t
f = 2*x^2 + exp(2*x)
f_int = int(f)
g = 4*x^4 + 6*t^2
g_int_x = int(g,x)
g_int_t = int(g,t)