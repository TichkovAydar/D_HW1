function T_final = FK_f(a1, a2, a3, a4, a5, a6)
%FK_F Summary of this function goes here
d1 = 400;
a1 = 25;
a2 = 560;
a3 = 25;
d4 = 515;
d6 = 90;
syms q1 q2 q3 q4 q5 q6;
T_01 = trotz(q1)*transl(a1, 0, d1)*trotx(pi/2);
T_12 = trotz(q2+pi/2)*transl(a2, 0, 0);
T_23 = trotz(q3)*transl(a3, 0, 0)*trotx(pi/2);
T_34 = trotz(q4)*transl(0, 0, d4)*trotx(-pi/2);
T_45 = trotz(q5)*trotx(pi/2);
T_56 = trotz(q6)*transl(0, 0, d6);
T_06 = T_01*T_12*T_23*T_34*T_45*T_56;
T_final = subs(T_06, [q1, q2, q3, q4, q5, q6],[a1, a2, a3, a4, a5, a6])
end

