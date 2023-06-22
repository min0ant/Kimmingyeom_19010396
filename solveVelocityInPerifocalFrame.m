function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    mu = 3.986004418e14;
    p = semimajor_axis*(1-eccentricity^2);
    d2r = pi/180;
    true_anomaly_rad = d2r * true_anomaly
    velocityInPQW = sqrt(mu/p) * [-sin(true_anomaly_rad) ; eccentricity+cos(true_anomaly_rad) ; 0];
end



