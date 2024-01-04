function x = Jacobi(A, b, tol, maxIter)
    [n, ~] = size(A);
    x = zeros(n, 1);
    xTemp = zeros(n, 1);
    for iter = 1:maxIter
        for i = 1:n
            sigma = A(i, 1:i-1) * x(1:i-1) + A(i, i+1:end) * x(i+1:end);
            xTemp(i) = (b(i) - sigma) / A(i, i);
        end
        error = norm(xTemp - x, inf);
        x = xTemp;
        if error < tol
            return;
        end
    end
end