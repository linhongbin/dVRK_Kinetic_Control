PSM_q0 = zeros(6,1);
PSM_q = [PSM_q0];
time_delta = 0.01;
lambda = 1/time_delta;
duration = 5;
PSM_Model = PSM_DH_Model();
[x0,J0] = FK_Jacob_Geometry(PSM_q0,PSM_Model.DH, PSM_Model.tip, PSM_Model.method);

% for t = time_delta:time_delta:duration
%     qt = PSM_q(:,end);
%     [xt,Jt] = FK_Jacob_Geometry(qt,PSM_Model.DH, PSM_Model.tip, PSM_Model.method);
%     [xd_t, vd_t] = Design_Trajectory(t,x0);
%     [xe_t, delta_theta] = T_Error(xt,xd_t);
%     qdot_t = Inv_Jacob_Control(xe_t, vd_t, Jt, lambda);
%     PSM_q = [PSM_q, qt+qdot_t*time_delta];
%     PSM_graphical(xt(1:3,1:3), xt(1:3,4));
% end

% for t = time_delta:time_delta:duration
%     [xd_t, vd_t] = Design_Trajectory(t,x0);
%     graphical(xd_t(1:3,1:3), xd_t(1:3,4));
% end

% d_size = size(psm_x_dsr);
% for i = 1:d_size(3)
%     if(mod(i,50) == 0)
%         graphical(psm_x_dsr(1:3,1:3,i), psm_x_dsr(1:3,4,i),i);
%         %pause(0.5);
%     end
% end

% d_size = size(mtm_x);
% for i = 1:d_size(3)
%     if(mod(i,50) == 0)
%         graphical(mtm_x(1:3,1:3,i), mtm_x(1:3,4,i),i);
%         %pause(0.5);
%     end
% end

% d_size = size(PSM_q)
% for i=1:d_size(2)
%     graphical(PSM_q, PSM_q);
% end



function [X,V] = Design_Trajectory(t,T0)
    X = T0*Transl(1*sin(t),'y')*Rot(t,'x');
    V = [[0;10*cos(t);0];T0(1:3,1:3)*[1;0;0]];
end


