function y = TichPhanGaussLegendre(f, a, b)
    syms x
    sym xd
    a0 = (b+a)/2;
    a1 = (b-a)/2;
    xd = a0 + a1*x;
    fd = matlabFunction(a1.*f(xd));
    y = fd(1/sqrt(3)) + fd(-1/sqrt(3));
end