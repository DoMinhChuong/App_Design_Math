function [fx, Pn] = HoiQuyHamMu(x1, y)
    x1 = log(x1);
    Y = log(y);
    n = length(x1);
    A = (n*sum(x1.*Y) - sum(x1)*sum(Y))/(n*sum(x1.^2) - sum(x1)*sum(x1));
    B = mean(Y) - A*mean(x1);
    a = exp(B);
    b = A;
    syms x;
    fx = matlabFunction(a*x^b);
    b1 = round(b, 4);
    Pn = a*x^b1;
    Pn = vpa(Pn, 4);
end