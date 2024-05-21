axis([0 5 0 4]);
[x, y] = ginput(10);

p = polyfit(x, y, 2);
x_range = linspace(0, 5, 100);
y_fit = polyval(p, x_range);

hold on;
plot(x, y, 'ro', 'MarkerSize', 8);
plot(x_range, y_fit, 'b-', 'LineWidth', 2);
grid on;
hold off;

