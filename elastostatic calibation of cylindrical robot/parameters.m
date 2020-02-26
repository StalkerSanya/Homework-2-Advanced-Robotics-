%% robot parameters

% material
robot.E = 7e10;
robot.nu = 0.346;
robot.ro = 2699;
% parameters of the links
              % L    a    b  m
robot.links = [0.6 0.5 0.30 5;       % base link
               0.3 0.5 0.30 5;       % link 1
               1.2 0.4 0.20 5;       % link 2
               1.2 0.4 0.20 5];      % link 3
% joint stiffness
robot.Kq = 1e6 *[1    2    0.5];
% stiffness mode
robot.use_links = false;
robot.use_gravity = false;

% joints
robot.joint_no = 3;
robot.theta_no = 6*(robot.joint_no)+robot.joint_no;

% tool
robot.tool = eye(4);
%robot.tool(1:3,4) = [0.001;0.001;0.001];

% mass recalculation
for i = 1:size(robot.links, 1)
    robot.links(i,4) = (pi/4)*(robot.links(i,2)^2-robot.links(i,3)^2)*robot.links(i,1)*robot.ro;
end

% limits of the joints
  robot.limits = [0,0.3;
                -pi,pi;
                0,0.3];          
robot.orientation = false;

               
               



