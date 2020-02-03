function Pol = Rec2Pol(vA)
    syms x y real
    syms r phi real
 
    val = [atan2(y,x) atan2(y,-x) atan2(-y,x) atan2(-y,-x) sqrt(x^2 + y^2)];
    var = [phi pi-phi -phi pi+phi r];
 
    rA = simplify(norm(vA));
    rA = subs(rA, val, var);
    phiA = simplify(atan2(vA(2), vA(1)));
    phiA = subs(phiA, val, var);
    fprintf('The value of r for [%s, %s] is: %s \n', string(vA),char(rA));
    fprintf('The value of phi for [%s, %s] is: %s \n', string(vA), char(phiA));
    Pol = [rA, phiA];
end