function df = taylor_fx_xapxitrungtam(f, xi, h, Oh)
    yx = str2sym(f);
    fx = matlabFunction(yx);
    if Oh == 2
        df = (fx(xi + h) - fx(xi - h)) / (2 * h);
    elseif Oh == 1
        df = (-fx(xi + 2*h) + 8*fx(xi + h) - 8*fx(xi - h) + fx(xi - 2*h)) / (12 * h);
    end
end