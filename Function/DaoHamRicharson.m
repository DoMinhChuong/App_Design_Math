function df = DaoHamRicharson(f, h, xi)
    yx = str2sym(f);
    fx = matlabFunction(yx);
    d1 = (fx(xi + h) - fx(xi - h)) / (2 * h);
    d2 = (fx(xi + h/2) - fx(xi - h/2)) / (h);
    df = 4/3*d2 - 1/3*d1;
end