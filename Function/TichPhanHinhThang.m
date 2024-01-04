function y = TichPhanHinhThang(fx, a, b, N)
    if isempty(a) || isempty(b) || isempty(fx) || a>b
        y = '';
        return;
    end
    h = (b - a) / N;
    fa = fx(a);
    fb = fx(b);
    sum_inside = 0;
    for i = 1:N-1
        xi = a + i * h;
        sum_inside = sum_inside + fx(xi);
    end
    y = (h / 2) * (fa + 2 * sum_inside + fb);
end