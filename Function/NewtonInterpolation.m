function [yx, Pn] = NewtonInterpolation(x, y)
    N = length(x) - 1;
    DD = zeros(N + 1, N + 1);
    DD(1:N + 1, 1) = y';
    for k = 2:N + 1
        for m = 1:N + 2 - k
            DD(m, k) = (DD(m + 1, k - 1) - DD(m, k - 1)) / (x(m + k - 1) - x(m));
        end
    end
    a = DD(1, :);
    n = a(N + 1);
    for k = N:-1:1
        n = [n a(k)] - [0 n * x(k)];
    end
    u = sym('u');
    Pn = a(N + 1);
    for k = N:-1:1
        Pn = Pn * (u - x(k)) + a(k);
    end
    yx = matlabFunction(Pn);
    Pn = simplify(Pn);
    Pn = expand(Pn);
    Pn = vpa(Pn, 5);
end