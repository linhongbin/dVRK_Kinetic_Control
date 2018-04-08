function PSM_T = Cartesian_Mapping(MTM_T, MTM_origin, PSM_origin)
    K_trans = 1;
    PSM_T = eye(4);
    R = PSM_origin(1:3,1:3)/MTM_origin(1:3,1:3);
    PSM_T(4,1:3) = (MTM_T(4,1:3) - MTM_origin(4,1:3))*K_trans;
    PSM_T(1:3,1:3) = PSM_origin(1:3,1:3)*MTM_T(1:3,1:3)/MTM_origin(1:3,1:3);
end