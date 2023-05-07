function [ B ] = coneHat( A )   
    [n, m] = size(A);
    r = 1/5 * min(n, m);
    B = zeros(n, m);
    center = [n/2, m/2];
    
    % Überprüfen Sie jeden Eintrag in A
    for i = 1:n
        for j = 1:m
            % Abstand zwischen mittelpunkt berechnen
            dist = norm([i,j] - center);
            if dist <= r
                % Punkt liegt im kreis -> hinzufügen
                B(i,j) = dist;
            end
        end
    end
end

