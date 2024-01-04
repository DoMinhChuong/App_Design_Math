function [fx, Pn] = HoiQuyBac2(x1, y)
    n = length(x1);
    A = [sum(x1.^4) sum(x1.^3) sum(x1.^2);...
        sum(x1.^3) sum(x1.^2) sum(x1);
        sum(x1.^2) sum(x1) n];
    B = [sum(y.*x1.^2); sum(y.*x1); sum(y)];
    heso = A\B;
    a = heso(1);
    b = heso(2);
    c = heso(3);
    syms x;
    fx = matlabFunction(a*x^2 + b*x + c);
    Pn = a*x^2 + b*x + c;
    Pn = vpa(Pn, 4);
end