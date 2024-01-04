function df = DaoHamRicharson_xy(x, y, xi)
    h = x(2) - x(1);
    h = h*2;
    if xi <= x(2) || xi >= x(end-1)
        df = '';
        return;
    end
    i = find(x <= xi, 1, 'last');
    d1 = (y(i + 2) - y(i - 2)) / (2 * h);
    d2 = (y(i + 1) - y(i - 1)) / (h);
    df = 4/3*d2 - 1/3*d1;
end