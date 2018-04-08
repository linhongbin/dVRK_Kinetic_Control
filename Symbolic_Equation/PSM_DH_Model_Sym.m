function m = PSM_DH_Model_Sym()
    syms l_RCC l_tool l_pitch2yaw l_yaw2ctrlpnt real;
    
    m.DH = [
        % type   alpha   a           d       theta
        %=====================================
           1      pi/2  0           0         pi/2;
           1     -pi/2  0           0        -pi/2;
           2      pi/2  0           -l_RCC    0;
           1      0     0           l_tool    0;
           1     -pi/2  0           0        -pi/2;
           1     -pi/2  l_pitch2yaw 0        -pi/2;
           ];
end