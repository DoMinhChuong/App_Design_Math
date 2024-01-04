function xi = TiepTuyen(f, a, b, epsilon)
    syms x;
    k = 0;
    if(f(a) > 0)
        xi = a;
    else
        xi = b;
    end
    while(1)
        df = diff(f(x));
        df_fx = matlabFunction(df, 'Vars', x);
        z = f(xi) / df_fx(xi);
        y = xi - z;
        k = k + 1;
        if abs(y - xi) < epsilon || k > 500
            break;
        end
        xi = y;
    end
    xi = y;
end