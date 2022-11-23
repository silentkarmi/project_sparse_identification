function P = possible_coefficients(order, X)
    coefficient_names = [];
    P = [];
    for i = 0:order
        for j = 0:order
            for k = 0:order
                if i == 0 && j ==0 & k == 0
                    continue
                end
                coeff = (X(:,1).^i) .* (X(:,2).^j) .* (X(:,3).^k);
                P = [P coeff];

                coeff = "";

                if i ~= 0
                    coeff = coeff + "x^"+i;
                end

                if j ~= 0
                    coeff = coeff + "y^"+j;
                end

                if k ~= 0
                    coeff = coeff + "z^"+k;
                end

                coefficient_names = [coefficient_names coeff];
            end
        end
    end

    disp("Possible Coefficient Vector");
    disp(coefficient_names);

end
