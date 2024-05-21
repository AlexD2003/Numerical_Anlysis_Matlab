function x = l10p1(n, A, b)
    x = zeros(n, 1);

    for p = 1:n-1
        [~, q] = max(abs(A(p:n, p)));
        q = q + p - 1;

        if A(q, p) == 0
            return;
        end

        if q ~= p
            A([p q], :) = A([q p], :);
            b([p q]) = b([q p]);
        end

        for i = p+1:n
            factor = A(i, p) / A(p, p);
            A(i, p:end) = A(i, p:end) - factor * A(p, p:end);
            b(i) = b(i) - factor * b(p);
        end
    end

    if A(n, n) == 0
        return;
    end

    for i = n:-1:1
        x(i) = (b(i) - sum(A(i, i+1:n) * x(i+1:n))) / A(i, i);
    end

    disp(x);
end

