clear; clc;

% With robotics toolbox

% we can derive every link as L(i) = Link ([theta  d    a   alpha])

  theta_1 = 0;
  d_1 = 400;
  a_1 = 25;
  alpha_1 = deg2rad(90);
  L(1)= Link([theta_1 d_1 a_1 alpha_1]);
  
  
  
  theta_2 = 0;
  d_2 = 0;
  a_2 = 560;
  alpha_2 = 0;
  L(2)= Link([theta_2, d_2 a_2 alpha_2]);
  
  
  
  theta_3 =  deg2rad(-90);
  d_3 = 0;
  a_3 = 25;
  alpha_3 = deg2rad(90);
  L(3)= Link([theta_3 d_3 a_3 alpha_3]);
    
  
  
  theta_4 =  0;
  d_4 = 515;
  a_4 = 0;
  alpha_4 = deg2rad(-90);
  L(4)= Link([theta_4 d_4 a_4 alpha_4]);
  
  
  
  theta_5 =  0;
  d_5 = 0;
  a_5 = 0;
  alpha_5 = deg2rad(90);
  L(5)= Link([theta_5 d_5 a_5 alpha_5]);
  
  
  
  theta_6 =  0;
  d_6 = 90;
  a_6 = 0;
  alpha_6 = deg2rad(0);
  L(6)= Link([theta_6 d_6 a_6 alpha_6]);

    
  arm = SerialLink(L);
  arm.name = 'KUKA KR 10 R1100-2';
  
  q1 = 0 ; q2 = pi/2  ; q3 = 0 ; q4 = 0 ; q5 = 0; q6 = 0;
  joint_variables = [q1, q2, q3, q4, q5, q6];
  
  arm.plot(joint_variables, 'jaxes')
  axis([-1200 1200 -1200 1200 0 1500])
  arm.fkine(joint_variables)