function groundtrack(pos)
    a = 6378137;
    f = 1/298.257223563;
    e = sqrt(2*f-f^2);

    num_data = size(pos,1);
    geodetic = zeros(num_data,3);

    for i = 1:num_data
        x = pos(i,1);
        y = pos(i,2);
        z = pos(i,3);

        lambda = atan2(y,x);
        phi_old = atan2(z*(1+((e^2)/(1-e^2))),sqrt(x^2+y^2));

        while (1)
            N =a/sqrt(1-e^2*sin(phi_old)^2);
            phi = atan2(z+N*e^2*sin(phi_old),sqrt(x^2+y^2));

            if abs(phi-phi_old)< 10^-12
                break;
            else
                phi_old = phi;
            end
        end

        N = a/sqrt(1-e^2*sin(phi)^2);

        if phi ~= (90*(pi/180))
            h = sqrt(x^2 + y^2)/cos(phi)-N;
        elseif phi ~= 0
            h = z / sin(phi)-N *(1-e^2);
        end

        geodetic(i,1) = phi;
        geodetic(i,2) = lambda;
        geodetic(i,3) = h;
    end

    % Plotting
    figure;
    plot(geodetic(:, 2), geodetic(:, 1));
    xlabel('Longitude');
    ylabel('Latitude');
    title('Geodetic Coordinates');
    grid on;
end