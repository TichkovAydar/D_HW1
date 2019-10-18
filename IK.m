w_x = T_final(1,4) - d6 * T_final(1,3);
w_y = T_final(2,4) - d6 * T_final(2,3);
w_z = T_final(3,4) - d6 * T_final(3,3);

q_1 = atan2(w_y,w_x);
q_2 = atan2(w_z,sqrt(w_x^2+w_y^2))+acos((d4^2+a3^2-a2^2-w_z^2-w_x^2-w_y^2)/(2*a2*sqrt(w_z^2+w_x^2+w_y^2)))