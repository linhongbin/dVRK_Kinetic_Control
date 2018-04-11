q = [0 0 0 0 0 0 0];
model = MTM_DH_Model();
T = MTM_FK(model,q.')
Jacob = MTM_Jacobian(model,q.')