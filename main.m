clear all
clc
[X,dX] = get_lorenz_data(50);
% dX(row+1, column+1) = 0;

order = 1;

x = X(:,1);
y = X(:,2);
z = X(:,3);

X(end,:) = [];

P = possible_coefficients(order,X);

disp("---------------");
disp("dx coefficients");
disp("---------------");
lasso_model = lasso(P,dX(:,1)); 
sparse_matrix = (lasso_model(:,25));
disp(print_dependent_coefficients(sparse_matrix, order));

disp("---------------");
disp("dy coefficients");
disp("---------------");
lasso_model = lasso(P,dX(:,2));
sparse_matrix = (lasso_model(:,25));
disp(print_dependent_coefficients(sparse_matrix, order));

disp("---------------");
disp("dz coefficients");
disp("---------------");
lasso_model = lasso(P,dX(:,3));
sparse_matrix = (lasso_model(:,25));
disp(print_dependent_coefficients(sparse_matrix, order));
