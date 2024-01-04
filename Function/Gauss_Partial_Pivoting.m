function x = Gauss_Partial_Pivoting(A, b)
    n = length(b);
    augmented_matrix = [A, b];
    for k = 1:n-1
        [~, max_row] = max(abs(augmented_matrix(k:n, k)));
        max_row = max_row + k - 1;
        augmented_matrix([k, max_row], :) = augmented_matrix([max_row, k], :);
        for i = k+1:n
            lambda = augmented_matrix(i, k) / augmented_matrix(k, k);
            augmented_matrix(i, :) = augmented_matrix(i, :) - lambda * augmented_matrix(k, :);
        end
    end
    x = augmented_matrix(:, end);
end