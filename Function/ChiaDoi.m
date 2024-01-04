function x = ChiaDoi(f, a, b, epsilon)
    if f(a) * f(b) > 0
        return;
    end
    k = 0;
    while abs(a - b) >= epsilon && k < 500
        c = (a + b) / 2;
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
        k = k + 1;
    end
    x = c;
end