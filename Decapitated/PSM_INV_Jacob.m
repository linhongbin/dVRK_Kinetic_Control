function q_dot = PSM_INV_Jacob(J, Vel)
    J_Inv = inv(J);
    q_dot = J_Inv * Vel;
end