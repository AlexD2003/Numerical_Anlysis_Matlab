M = [6 2 1 -1; 2 4 1 0; 1 1 4 -1; -1 0 -1 3];

[L, U] = lu_decomposition_doolittle(M);

disp(L);
display(newline);
disp(U);

