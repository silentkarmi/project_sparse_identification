function coefficeints = print_dependent_coefficients(sparse_matrix, order)
%print_dependent_coefficients using the lasso method, prints dependent
%coefficeints

    coefficeints = "";
    [min,max] = bounds(sparse_matrix);
    tolerance_percentage = 1;
    tolerance = (max - min) * tolerance_percentage/100;
    index = 1;
    for i = 0:order
        for j = 0:order
            for k = 0:order
                if i == 0 && j ==0 && k == 0
                    continue;
                end

                value = round(sparse_matrix(index),6);
                index = index + 1;

                if abs(value) <= 0 + tolerance && abs(value) >= 0 - tolerance
                    continue
                end

                coeff = "";
                if value < 0
                    coeff = coeff + "-";
                end

                if i ~= 0
                    coeff = coeff + "x^"+i;
                end

                if j ~= 0
                    coeff = coeff + "y^"+j;
                end

                if k ~= 0
                    coeff = coeff + "z^"+k;
                end

               coefficeints  = coefficeints + " | " + coeff;
            end
        end
    end
end