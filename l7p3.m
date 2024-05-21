R = 110;
p = 75;
function y = integrand(x, p, R)
    y = sqrt(1 - (p / R) * sin(x));
end

function result = trapezium_rule(func, a, b, n, p, R)
    h = (b - a) / n;
    result = 0.5 * (func(a, p, R) + func(b, p, R));
    for i = 1:(n - 1)
        result = result + func(a + i * h, p, R);
    end
    result = result * h;
end

n_values = [10, 100];

for i = 1:length(n_values)
    n = n_values(i);
    integral_approx = trapezium_rule(@integrand, 0, 2 * pi, n, p, R);
    H = (60 * R / (R^2 - p^2)) * integral_approx;
    disp(['Approximation for n = ', num2str(n), ': ', num2str(H)]);
end

