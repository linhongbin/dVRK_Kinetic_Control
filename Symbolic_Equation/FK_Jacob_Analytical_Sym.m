function [T,Jacobian] = FK_Jacob_Analytical_Sym(dh_table,Tip_T,DH_method)
% return position of center of mass of ith link
T = sym(eye(4));
dh_size = size(dh_table);
q_sym = sym('q', [1 dh_size(1)],'real');

Jacob_ori = sym([0;0;1]);
for i=1:dh_size(1)
    theta = dh_table(i,5);
    d = dh_table(i,4);
    a = dh_table(i,3);
    alpha = dh_table(i,2);
    type = dh_table(i,1);
    if type == 1
        theta = theta + q_sym(i);
        T = T*DHtransform(theta,d,a,alpha,DH_method);
        Jacob_ori = [Jacob_ori,T(1:3,3)];
    elseif type ==2
        d = d + q_sym(i);
        T= T*DHtransform(theta,d,a,alpha,DH_method);
        Jacob_ori = [Jacob_ori,[0;0;0]];
    else
        msg = sprintf('Encounter a known Joint Type %d, it must be 1 or 2',type);
        error(msg);
    end    
end
if(DH_method == 'Standard')
    Jacob_ori = Jacob_ori(:,1:end-1);
elseif(DH_method == 'Modified')
    Jacob_ori = Jacob_ori(:,2:end);
end
T = simplify(T*Tip_T);
jacob_pos = jacobian(T(1:3,4),q_sym);
Jacobian = simplify([jacob_pos;Jacob_ori]);
end