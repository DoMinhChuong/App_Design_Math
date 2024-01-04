function x = Gauss_Jordan(A, b)
    n = length(b);
    augmented_matrix = [A, b];
    for k = 1:n
        augmented_matrix(k, :) = augmented_matrix(k, :) / augmented_matrix(k, k);
        for i = 1:n
            if i ~= k
                augmented_matrix(i, :) = augmented_matrix(i, :) - augmented_matrix(i, k) * augmented_matrix(k, :);
            end
        end
    end
    x = augmented_matrix(:, end);
end