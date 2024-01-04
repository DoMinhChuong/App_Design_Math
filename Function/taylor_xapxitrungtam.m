function df = taylor_xapxitrungtam(x, y, xi, Oh)
    h = x(2) - x(1);
    if xi < x(1) || xi > x(end)
        df = '';
        return;
    end
    i = find(x <= xi, 1, 'last');
    k = find(x >= xi, 1, 'first');
    if i < length(x) && k > 1 && Oh == 2
        df = (y(i+1) - y(i-1)) / (2 * h);
    elseif i < length(x)-1 && k > 2 && Oh == 1
        df = (-y(i+2) + 8*y(i+1) - 8*y(i-1) + y(i-2)) / (12*h);
    else
        df = 'l';
        return;
    end
end