PSM_q0 = zeros(6,1);
PSM_q = [PSM_q0];
time_delta = 0.01;
lambda = 1/time_delta;
duration = 5;
PSM_Model = PSM_DH_Model();
[x0,J0] = FK_Jacob_Geometry(PSM_q0,PSM_Model.DH, PSM_Model.tip, PSM_Model.method);
for t = time_delta:time_delta:duration
    qt = PSM_q(:,end);
    [xt,Jt] = FK_Jacob_Geometry(qt,PSM_Model.DH, PSM_Model.tip, PSM_Model.method);
    [xd_t, vd_t] = Design_Trajectory(t,x0);
    [xe_t, delta_theta] = T_Error(xt,xd_t);
    qdot_t = Inv_Jacob_Control(xe_t, vd_t, Jt, lambda);
    PSM_q = [PSM_q, qt+qdot_t*time_delta];
    graphical(xt(1:3,1:3), xt(4,1:3));
end

% d_size = size(PSM_q)
% for i=1:d_size(2)
%     graphical(PSM_q, PSM_q);
% end



function [X,V] = Design_Trajectory(t,T0)
    X = T0*Rot(t,'x');
    V = [zeros(3,1);T0(1:3,1:3)*[1;0;0]];
end

