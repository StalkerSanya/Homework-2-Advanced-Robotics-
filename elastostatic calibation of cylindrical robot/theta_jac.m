function t = theta_jac(q,theta, param)
   t = zeros(6,param.theta_no);
   
   T_rot = Rz(-q(2));
   
   L1 = param.links(1,1); L2 = param.links(2,1); L3 = param.links(3,1); L4 = param.links(4,1);
   drx = dRx(0); dry = dRy(0); drz = dRz(0);
   dtx = dTx(0); dty = dTy(0); dtz = dTz(0);
   Tool = param.tool;
   
   % 1
   tmp = Tz(L1) * Tz(q(1)) * dtz * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot; 
   t(:,1) = Jcol(tmp);
   % 2
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2)* dtx * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,2) = Jcol(tmp);
   % 3
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2)* dty * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,3) = Jcol(tmp);
   % 4
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2)* dtz * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,4) = Jcol(tmp);   
   % 5
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2)* drx * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,5) = Jcol(tmp);
   % 6
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2)* dry * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot; 
   t(:,6) = Jcol(tmp);
   % 7
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2)* drz * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,7) = Jcol(tmp);
   % 8
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2)* Rz(q(2)) * drz * Tx(L3) * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,8) = Jcol(tmp);
   % 9
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * dtx * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,9) = Jcol(tmp);
   % 10
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * dty * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,10) = Jcol(tmp);
   % 11
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * dtz * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,11) = Jcol(tmp);
   % 12
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * drx * Tx(q(3)) * Tx(L4)*Tool * T_rot; 
   t(:,12) = Jcol(tmp);
   % 13
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * dry * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,13) = Jcol(tmp);
   % 14
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * drz * Tx(q(3)) * Tx(L4)*Tool * T_rot;
   t(:,14) = Jcol(tmp);
   % 15
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3))* dtx * Tx(L4)*Tool * T_rot;
   t(:,15) = Jcol(tmp);
   % 16
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4) * dtx * Tool * T_rot;
   t(:,16) = Jcol(tmp);
   % 17
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4) * dty * Tool * T_rot;
   t(:,17) = Jcol(tmp);
   % 18
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4) * dtz * Tool * T_rot;
   t(:,18) = Jcol(tmp);
   % 19
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4) * drx * Tool * T_rot;
   t(:,19) = Jcol(tmp);
   % 20
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4) * dry * Tool * T_rot;
   t(:,20) = Jcol(tmp);
   % 21
   tmp = Tz(L1) * Tz(q(1)) * Tz(L2) * Rz(q(2)) * Tx(L3) * Tx(q(3)) * Tx(L4) * drz * Tool * T_rot;
   t(:,21) = Jcol(tmp);  
      
end