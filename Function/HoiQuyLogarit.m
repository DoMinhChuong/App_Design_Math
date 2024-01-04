function [fx, Pn] = HoiQuyLogarit(x1, y)
    n = length(x1);
    x1_log = log(x1);
    a = (n * sum(x1_log.*y) - sum(x1_log) * sum(y)) / (n * sum(x1_log.^2) - sum(x1_log) * sum(x1_log));
    b = mean(y) - a * mean(x1_log);
    syms x;
    fx = matlabFunction(a * log(x) + b);
    Pn = a * log(x) + b;
    Pn = vpa(Pn, 4);
end