function VA = plotXVA(x,range) 
    syms t
    v(t) = diff(x, t);
    a(t) = diff(v, t);
     
    figure()
    subplot(3,1,1);
    ezplot(x, range)
    title('x vs t')
    xlabel('t')
    grid on
 
    subplot(3,1,2);
    ezplot(v, range)
    title('v vs t')
    xlabel('t')
    grid on
 
    subplot(3,1,3);
    ezplot(a, range)
    title('a vs t')
    xlabel('t')
    grid on
    
    VA = [v a]
end