function m = MTM_DH_Model_Sym()
    syms l_forearm l_arm h real;
    
    m.method = 'Standard'
    m.DH = [
        % type   alpha   a           d       theta
        %=====================================
           1      pi/2  0           0         -pi/2;
           1      0     l_arm       0         -pi/2;
           1     -pi/2  l_forearm   0          pi/2;
           1      pi/2  0           h          0;
           1     -pi/2  0           0          0;
           1      pi/2  0           0         -pi/2;
           1      0     0           0          pi/2;
           ];
       
    m.tip = eye(4);
end