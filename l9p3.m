n_values = 10:15;

for n = n_values
    t = -1 + (2 * (1:n)) / n;
    V = vander(t);

    cond_number = cond(V);

    display(n);
    display(cond_number);
end

