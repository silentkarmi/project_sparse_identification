function [tspan,X,dX] = get_lorenz_data(total_time)
    dt = 0.001;
    tspan = dt:dt:total_time;
    initial_cond = [0;1;20];


    lorenz_sys_function = @(t,X,u)lorenz_system(t,X,0);
    
    [t,X] = ode45(lorenz_sys_function,tspan,initial_cond); %getting the solution to ODE
    dX = diff(X); %calculating the diff values
    
    

    plot3(X(:,1), X(:,2), X(:,3), 'w', 'LineWidth',1.5)
    set(gca,'color','k', 'xcolor','w','ycolor','w','zcolor','w')
    set(gcf, 'color', 'k')

    
end
