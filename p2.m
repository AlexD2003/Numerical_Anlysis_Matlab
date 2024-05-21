n=5;
disp('Please click on 5 arbitrary points in the plot');

[x_points, y_points] = ginput(5);

plot(x_points,y_points,'o')
hold on
spline_curve = spline(x_points, [0, y_points', 0]);
x_values = linspace(min(x_points), max(x_points), 1000);
y_values_spline = ppval(spline_curve, x_values);

plot(x_values, y_values_spline, 'b-', 'LineWidth', 2);
grid on;

