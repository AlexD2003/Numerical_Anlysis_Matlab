time = [0, 3, 5, 8, 13];
distance = [0, 225, 383, 623, 993];
speed = [75, 77, 80, 74, 72];
t = 10;

spline_distance = spline(time, [75, distance, 72]);
spline_speed = spline(time, speed);

predicted_distance = ppval(spline_distance, t);
predicted_speed = ppval(spline_speed, t);

display(predicted_distance)
display(predicted_speed)

