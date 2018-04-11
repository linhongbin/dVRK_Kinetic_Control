MTM_origin_q = zeros(7,1);
PSM_origin_q = zeros(6,1);
MTM_model = MTM_DH_Model();
PSM_model = PSM_DH_Model();
MTM_origin = MTM_FK(MTM_model,MTM_origin_q);
PSM_origin = PSM_FK(PSM_model,PSM_origin_q);
MTM_q = [1 0 1 0 1 0 1].';
PSM_T = Cartesian_Mapping(MTM_FK(MTM_model,MTM_q), MTM_origin, PSM_origin)

