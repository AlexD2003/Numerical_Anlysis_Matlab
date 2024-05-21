a = 0;
b = pi;
function y = integrand(x)
    y = 1./(5 + sin(25*x));
end

function result = simpsons_rule(func, a, b, n)
    h = (b - a) / n;
    x = a:h:b;
    y = func(x);
    result = h/3 * (y(1) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2)) + y(end));
end

n_values = [12, 30];

for i = 1:length(n_values)
    n = n_values(i);
    integral_approx = simpsons_rule(@integrand, a, b, n);
    disp(['Approximation for n = ', num2str(n), ': ', num2str(integral_approx)]);
end

