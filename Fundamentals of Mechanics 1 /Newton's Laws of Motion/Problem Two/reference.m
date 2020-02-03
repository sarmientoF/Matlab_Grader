function F = StopForce(m, v, x)
    a = v^2 / 2 / x;
    F = a * m;
end