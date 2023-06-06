function az = azimuth(ENU)

    n = size(ENU, 1);

    az = zeros(1, n);
    
    for i = 1:n
        E = ENU(i, 1);
        N = ENU(i, 2);
        U = ENU(i, 3);
       
        az(i) = atan2(E, N) * 180 / pi;

        if az(i) < 0
            az(i) = az(i) + 360;
        end
    end
end

