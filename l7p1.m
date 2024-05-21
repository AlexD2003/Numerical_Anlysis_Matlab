f = @(x) 3./(1 + 2*x.^2);
a = 0;
b = 1;
n = 1000;

h = (b - a) / n;

x = linspace(a, b, n+1);
y = f(x);
trapezoidal_integral = h * (sum(y) - 0.5 * (y(1) + y(end)));

simpsons_integral = h/3 * (y(1) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2)) + y(end));

figure;
plot(x, y, 2);
hold on;
plot([a, a, b, b], [0, f(a), f(b), 0], 2);


