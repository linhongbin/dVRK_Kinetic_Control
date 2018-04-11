
function graphical(R,t)
    T = rt2tr(R,t);
    T_origin=eye(4,4);
    x_e = t(1,1); y_e = t(2,1); z_e = t(3,1);
    title(sprintf('The position: x:%.4f, y:%.4f, z:%.4f',x_e,y_e,z_e));
    link = plot3([T_origin(1,4),t(1,1)],[T_origin(2,4),t(2,1)],[T_origin(3,4),t(3,1)],'k','LineWidth',2);
    hold on;
    patch([-0.5,0.5,0.5,-0.5],[0.5,0.5,-0.5,-0.5],[0,0,0,0],[0.859,0.859,0.859]);
    hold on;
    trplot(T_origin,'length',1,'arrow','width', 1.5,'thick',2,'rgb');
    hold on;
    plot_end = trplot(T,'length',1,'arrow','width', 1.5,'thick',2,'rgb');
    pause(0.1);
    delete(plot_end);
    delete(link);
    grid on;
    axis([-3 3 -3 3 -3 3]);
    
    
    
end



