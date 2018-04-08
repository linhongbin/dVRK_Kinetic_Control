time_delta = 0.01;
duration = 5;
t = 0:time_delta:duration;
q0 = zeros(6,1);
q = [q0];
PSM_model = PSM_DH_Model();
x = [PSM_FK(model,q0)];
Kp = 1;
for k=t
   [x_desired,v_desired] =  trajectory_desired(k);
   x_e = eye(4);
   x_t = x(:,:,end)
   x_t_pos_e = x_desired(4,1:3) - x_t(4,1:3);
   x_t_ori_e = x_desired(1:3,1:3) - x_t(1:3,1:3);
   V_feed = 
end

function [T,V] = trajectory_desired(t)
    T = eye(4);
    T(4,1) =  sin(t);
    T(4,2) =  cos(t);
    V =  zeros(6,1);
    V(1) = cos(t);
    V(2) = -sin(t);
    V(3) = 0;
end