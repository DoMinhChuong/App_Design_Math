function x = LUsolve(A, b)
    n = size(A, 1);
    for k = 1:n-1
        for i = k+1:n
            if A(i, k) ~= 0.0
                lambda = A(i, k) / A(k, k);
                A(i, k+1:n) = A(i, k+1:n) - lambda * A(k, k+1:n);
                A(i, k) = lambda;
            end
        end
    end

    % Solve L*Y = b using forward substitution
    Y = zeros(n, 1);
    Y(1) = b(1);
    for k = 2:n
        Y(k) = b(k) - A(k, 1:k-1) * Y(1:k-1);
    end

    % Solve U*x = Y using backward substitution
    x = zeros(n, 1);
    x(n) = Y(n) / A(n, n);
    for k = n-1:-1:1
        x(k) = (Y(k) - A(k, k+1:n) * x(k+1:n)) / A(k, k);
    end
end