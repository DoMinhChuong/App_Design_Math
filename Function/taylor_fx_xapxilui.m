function df = taylor_fx_xapxilui(f, xi, h, Oh)
    yx = str2sym(f);
    fx = matlabFunction(yx);
    if Oh == 1
        df = (fx(xi) - fx(xi - h)) / h;
    elseif Oh == 2
        df = (fx(xi - 2*h) - 4*fx(xi - h) + 3*fx(xi)) / (2 * h);
    end
end