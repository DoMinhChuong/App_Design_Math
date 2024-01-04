function x = DayCung(f, a, b, epsilon)
    n = 0;
    if(f(a) > 0)
        c = b; d = a;
    else
        c = a; d = b;
    end
    while(1)
        x = c;
        c = (x * f(d) - d * f(x)) / (f(d) - f(x));
        n = n + 1;
        if abs(x - c) < epsilon
            break;
        end
    end
    x = c;
end