function [fx, Pn] = HoiQuyBac1(x1, y)
    n = length(x1);
    a = (n * sum(x1.*y) - sum(x1) * sum(y)) / (n * sum(x1.^2) - sum(x1) * sum(x1));
    b = mean(y) - a * mean(x1);
    syms x;
    fx = matlabFunction(a * x + b);
    Pn = a * x + b;
    Pn = vpa(Pn, 4);
end