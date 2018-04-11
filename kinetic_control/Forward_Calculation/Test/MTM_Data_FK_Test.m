MTM_model = MTM_DH_Model;
PSM_model = PSM_DH_Model;
q_mtm = mtm_q(:,1);
q_psm = psm_q_initial;

[mtm_T,Jacob] = FK_Jacob_Geometry(q_mtm, MTM_model.DH, MTM_model.tip ,MTM_model.method)
mtm_diff_p = mtm_T(1:3,4) - mtm_x(1:3,4,1)

[psm_T,Jacob] = FK_Jacob_Geometry(q_psm, PSM_model.DH, PSM_model.tip ,PSM_model.method)
psm_diff_p = psm_T(1:3,4) - psm_x_dsr(1:3,4,1)
R = psm_T(1:3,1:3)/mtm_T(1:3,1:3)

xt_mtm = mtm_x(:,:,1000);
xt_psm = psm_x_dsr(:,:,1000);

mtm_delta = (xt_mtm(1:3,4)-mtm_x_ref(1:3,4))
psm_delta = (xt_psm(1:3,4)-psm_x_ref(1:3,4))


psm_delta
R*mtm_delta


