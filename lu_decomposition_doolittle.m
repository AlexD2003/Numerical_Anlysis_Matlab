function [L, U] = lu_decomposition_doolittle(M)
    n = size(M, 1);
    L = eye(n);
    U = zeros(n);

    for k = 1:n
        U(k, k:n) = M(k, k:n) - L(k, 1:k-1) * U(1:k-1, k:n);
        L((k+1):n, k) = (M((k+1):n, k) - L((k+1):n, 1:k-1) * U(1:k-1, k)) / U(k, k);
    end
end

