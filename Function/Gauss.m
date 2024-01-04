function x = Gauss(A, b)
    n = length(b);
    for k = 1:n-1
        for i = k+1:n
            lambda = A(i,k) / A(k,k);
            for j = k+1:n
                A(i,j) = A(i,j) - lambda * A(k,j);
            end
            b(i) = b(i) - lambda * b(k);
        end
    end

    x = zeros(n, 1);
    for i = n:-1:1
        x(i) = (b(i) - A(i,i+1:n) * x(i+1:n)) / A(i,i);
    end
end