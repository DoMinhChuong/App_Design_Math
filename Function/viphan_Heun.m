function fxy = viphan_Heun(f, t0, tf, y0, h)
    N = (tf - t0)/h;
    t = t0 + (0:N)'*h;
    y(1,:) = y0(:)';
    for k = 1:N
        fk = feval(f, t(k), y(k,:));
        y(k+1,:) = y(k,:) + h*fk;
        y(k+1,:) = y(k,:) + h/2*(fk + feval(f, t(k+1), y(k+1,:)));
    end
    fxy = y(end);
end