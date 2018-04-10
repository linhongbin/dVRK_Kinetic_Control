PSM_model = PSM_DH_Model_Sym();
[PSM_T_geo, PSM_Jacob_geo] = FK_Jacob_Geometry_Sym(PSM_model.DH, PSM_model.tip, PSM_model.method)
[PSM_T_analy, PSM_Jacob_analy] = FK_Jacob_Analytical_Sym(PSM_model.DH, PSM_model.tip, PSM_model.method)
diff_T = simplify(PSM_T_geo-PSM_T_analy)
diff_Jacob = simplify(PSM_Jacob_geo-PSM_Jacob_analy)