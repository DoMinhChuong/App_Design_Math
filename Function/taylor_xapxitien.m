function df = taylor_xapxitien(x, y, xi, Oh)
    h = x(2) - x(1);
    if xi < x(1) || xi >= x(end)
        df = '';
        return;
    end
    i = find(x <= xi, 1, 'last');
    if i < length(x) && Oh == 1
        df = (y(i+1) - y(i)) / h;
    elseif i < length(x)-1 && Oh == 2
        df = (-y(i+2) + 4*y(i+1) - 3*y(i)) / (2*h);
    else
        return;
    end
end