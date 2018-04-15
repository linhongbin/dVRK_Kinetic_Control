MTM_model = MTM_DH_Model_Sym();
[MTM_T_geo, MTM_Jacob_geo] = FK_Jacob_Geometry_Sym(MTM_model.DH, MTM_model.tip,MTM_model.method);
[MTM_T_analy, MTM_Jacob_analy] = FK_Jacob_Analytical_Sym(MTM_model.DH, MTM_model.tip, MTM_model.method);
%diff_T = simplify(MTM_T_geo-MTM_T_analy)
%diff_Jacob = simplify(MTM_Jacob_geo-MTM_Jacob_analy)
syms q1 q2 q3 q4 q5 q6 q7;

R_MTM = MTM_T_analy(1:3,1:3);
A = sym('A', [3 3]);
P = sym('P', [3,1]);

T = subs(MTM_T_analy,[q1, q2, q3], [0 0 0]);
 
 for i = 1:3
     for j = 1:3
         equ = [equ,T(i,j) == A(i,j)];
     end
 end






