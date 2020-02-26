function Q = IK(P,robot)
   l0 = robot.links(1,1); l1 = robot.links(2,1); l2 = robot.links(3,1);
   l3 = robot.links(4,1);
   


q1 = P(3) - l1 - l0;
q2 = atan2(P(2),P(1));
q3 = sqrt(P(1)^2 + P(2)^2) - l2 - l3;
   
   Q = check_limits([q1;q2;q3], robot);   
end