% Part 3
syms xp yp real
syms xq yq real
syms th real
 
xxp =  xp * cos(th) + yp * sin(th);
yyp = -xp * sin(th) + yp * cos(th);
 
Vp = [xp yp];
VVp = [xxp yyp];
 
xxq =  xq * cos(th) + yq * sin(th);
yyq = -xq * sin(th) + yq * cos(th);
 
Vq = [xq yq];
VVq = [xxq yyq];
 
PQ_normal = simplify(norm(Vp - Vq),'steps',40)
PQ_rotated = simplify(norm(VVp - VVq),'steps',10)