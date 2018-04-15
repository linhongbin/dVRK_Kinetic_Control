for i = 0 :0.1 :5
    R = [ 1/2 -sqrt(3)/2 0; 
        sqrt(3)/2*cos(i) 1/2*cos(i) -sin(i);
        sqrt(3)/2*sin(i) 1/2*sin(i) cos(i)];
    t = [ 1-0.5*i; 1+0.5*i; 1-0.5*i];
    graphical(R,t)
end

