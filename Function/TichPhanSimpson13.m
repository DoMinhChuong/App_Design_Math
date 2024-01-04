function y = TichPhanSimpson13(fx, a, b, N)
    if a > b || isempty(a) || isempty(b) || isempty(fx)
        y = '';
        return;
    end
    h = (b - a) / N;
    fa = fx(a);
    fb = fx(b);
    sum_odd = 0;
    sum_even = 0;
    for i = 1:N-1
        xi = a + i * h;
        if mod(i, 2) == 1
            sum_odd = sum_odd + fx(xi);
        else
            sum_even = sum_even + fx(xi);
        end
    end
    y = (h / 3) * (fa + 4 * sum_odd + 2 * sum_even + fb);
end