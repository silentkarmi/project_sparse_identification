function dX = lorenz_system(t,X,u)
%Creates a lorenz system with some fixed constant sigma rho beta paramters

    sigma = 10;
    rho = 28;
    beta = 8/3;
    
    x = X(1);
    y = X(2);
    z = X(3);
    
    dx = sigma * (y - x) + u;
    dy = x * (rho - z) - y;
    dz = x*y - beta * z;

    dX = [dx; dy; dz];
end