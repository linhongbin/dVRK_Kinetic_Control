MTM_model = MTM_DH_Model_Sym();
[MTM_T_geo, MTM_Jacob_geo] = FK_Jacob_Geometry_Sym(MTM_model.DH, MTM_model.tip,MTM_model.method)
[MTM_T_analy, MTM_Jacob_analy] = FK_Jacob_Analytical_Sym(MTM_model.DH, MTM_model.tip, MTM_model.method)
diff_T = simplify(MTM_T_geo-MTM_T_analy)
diff_Jacob = simplify(MTM_Jacob_geo-MTM_Jacob_analy)