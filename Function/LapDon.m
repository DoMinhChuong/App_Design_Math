function x = LapDon(f, a, b, epsilon)
    k = 0;
    x = (a + b) / 2;

    while(1)
        y = f(x);
        if abs(y - x) < epsilon || k > 500
            break;
        end
        x = y;
        k = k + 1;
    end
end