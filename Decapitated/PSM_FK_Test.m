q = [0 0 0 0 0 0];
model = PSM_DH_Model();
T = PSM_FK(model,q.')
Jacob = PSM_Jacobian(model,q.')