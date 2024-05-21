n_values = 10:15;

for n = n_values
    H = zeros(n);
    for i = 1:n
        for j = 1:n
            H(i, j) = 1 / (i + j - 1);
        end
    end

    cond_number = cond(H);

    display(n);
    display(cond_number);
end

