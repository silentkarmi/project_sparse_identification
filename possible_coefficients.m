function P = possible_coefficients(order, X)
    P = [];
    for i = 0:order
        for j = 0:order
            for k = 0:order
                if i == 0 && j ==0 & k == 0
                    continue
                end
                coeff = (X(:,1).^i) .* (X(:,2).^j) .* (X(:,3).^k);
                P = [P coeff];
            end
        end
    end

end
