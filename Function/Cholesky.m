function x = Cholesky(A, b)
    [m, n] = size(A);
    if m ~= n || ~isequal(A, A')
        return;
    end

    if any(eig(A) <= 0)
        return;
    end

    L = chol(A, 'lower');

    y = forward_substitution(app, L, b);

    x = backward_substitution(app, L', y);
end