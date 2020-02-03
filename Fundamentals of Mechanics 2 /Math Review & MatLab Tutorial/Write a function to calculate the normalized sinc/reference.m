function y = normsinc(x)
    y = sin(pi*x)./(pi*x);
    y(x==0) = 1;    
end