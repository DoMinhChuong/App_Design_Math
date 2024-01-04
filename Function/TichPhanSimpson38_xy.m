function result = TichPhanSimpson38_xy(x, y, a, b)
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
    sum_1 = sum(y_selected(2:3:end-1));
    sum_2 = sum(y_selected(3:3:end-2));
    sum_3 = sum(y_selected(4:3:end-3));
    result = (3 * h / 8) * (fa + 3 * sum_1 + 3 * sum_2 + 2 * sum_3 + fb);
end