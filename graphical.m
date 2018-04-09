
function graph(R,t)
    T = rt2tr(R,t);
    T_origin=eye(4,4);trplot(T_origin,'length',0.5,'arrow','width', 1,'thick',1,'rgb');
    hold on;
    plot_end = trplot(T,'length',0.5,'arrow','width', 1,'thick',1,'rgb');
    pause(0.5);
    delete(plot_end)
    
end



