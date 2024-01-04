function fxy = viphan_TrungDiem(fxy, xdau, xcuoi, y0, h)
    N = (xcuoi - xdau)/h;
    x = xdau + (0:N)'*h;
    y = zeros(length(x), 1);
    y(1) = y0;

    for i = 1:N
        k1 = h * feval(fxy, x(i), y(i));
        k2 = h * feval(fxy, x(i) + h/2, y(i) + k1/2);
        y(i+1) = y(i) + k2;
    end
    fxy = y(end);
end