A = [10 8 -2 7;
     2 3 0 1;
    -3 2 6 9;
     7 5 9 10];

b = [5;
    -8;
     3;
    12];

x = A \ b;
disp(x);

condition_number = cond(A);
disp(condition_number);

b2 = [5.6;
     -8.2;
      3.9;
     12.4];

x2 = A \ b2;
disp(x2);

relative_error_b = norm(b - b2) / norm(b);
disp(relative_error_b);

output_relative_error = norm(x - x2) / norm(x);
disp(output_relative_error);

A3 = [10 8.54 -2.13 7.2;
      2.12 3.1 0.6 0.99;
      -3 1.83 5.7 9.1;
      6.77 5.23 8.87 10];

x3 = A3 \ b;
disp(x3);

condition_number_A3 = cond(A3);
disp(condition_number_A3);

relative_error_A = norm(A - A3) / norm(A);
disp(relative_error_A)

output_relative_error2 = norm(x - x3) / norm(x);
disp(output_relative_error2)


