function fxy = viphan_RK4(f, t0, tf, y0, h)
    N = (tf - t0)/h;
    t = t0 + (0:N)'*h;
    y(1,:) = y0(:)';
    for k = 1:N
        k1 = h*feval(f, t(k), y(k,:));
        k1 = k1(:)';
        k2 = h*feval(f, t(k) + h/2, y(k,:) + k1/2);
        k2 = k2(:)';
        k3 = h*feval(f, t(k) + h/2, y(k,:) + k2/2);
        k3 = k3(:)';
        k4 = h*feval(f, t(k) + h, y(k,:) + k3);
        k4 = k4(:)';
        y(k+1,:) = y(k,:) + (k1 + 2*k2 + 2*k3 + k4)/6;
    end
    fxy = y(end);
end