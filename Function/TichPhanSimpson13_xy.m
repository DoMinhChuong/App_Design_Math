function result = TichPhanSimpson13_xy(x, y, a, b)
    if isempty(a) || isempty(b) || isempty(x) || isempty(y) || length(x) ~= length(y)
        result = '';
        return;
    end
    if a < x(1) || b > x(end) || a>b
        result = 'Error';
        return;
    end
    index_a = find(x >= a, 1);
    index_b = find(x <= b, 1, 'last');
    if isempty(index_a) || isempty(index_b) || index_a > index_b
        result = 'Error';
        return;
    end
    x_selected = x(index_a:index_b);
    y_selected = y(index_a:index_b);
    N = length(x_selected) - 1;
    h = (x_selected(end) - x_selected(1)) / N;
    fa = y_selected(1);
    fb = y_selected(end);
    sum_odd = sum(y_selected(2:2:end-1));
    sum_even = sum(y_selected(3:2:end-2));
    result = (h / 3) * (fa + 4 * sum_odd + 2 * sum_even + fb);
end