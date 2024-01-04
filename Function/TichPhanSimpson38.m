function y = TichPhanSimpson38(fx, a, b, N)
    if isempty(a) || isempty(b) || isempty(fx) || a>b
        y = '';
        return;
    end
    h = (b - a) / N;
    fa = fx(a);
    fb = fx(b);
    sum_1 = 0;
    sum_2 = 0;
    sum_3 = 0;
    for i = 1:N-1
        xi = a + i * h;
        if mod(i, 3) == 1
            sum_1 = sum_1 + fx(xi);
        elseif mod(i, 3) == 2
            sum_2 = sum_2 + fx(xi);
        else
            sum_3 = sum_3 + fx(xi);
        end
    end
    y = (3 * h / 8) * (fa + 3 * sum_1 + 3 * sum_2 + 2 * sum_3 + fb);
end