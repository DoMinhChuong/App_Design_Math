function X = gaussSeidel(A, B, tol, maxIter)
    n = length(B);
    X = zeros(n, 1);
    numIter = 0;

    for k = 1:maxIter
        XTemp = X;
        for i = 1:n
            X(i) = (B(i) - A(i, [1:i-1, i+1:end]) * X([1:i-1, i+1:end])) / A(i, i);
        end

        err = norm(X - XTemp, inf);

        numIter = numIter + 1;

        if err < tol
            return;
        end
    end
end