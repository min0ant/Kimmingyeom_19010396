function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    r = (semimajor_axis * (1 - eccentricity^2)) / (1 + eccentricity * cosd(true_anomaly));
    r_sn = [r ; 0 ; 0];
    d2r = pi/180;
    true_anomaly_rad = d2r*true_anomaly; 
    rangeInPQW = [cos(true_anomaly_rad) -sin(true_anomaly_rad) 0;
        sin(true_anomaly_rad) cos(true_anomaly_rad) 0;
        0 0 1] * r_sn;
   
end