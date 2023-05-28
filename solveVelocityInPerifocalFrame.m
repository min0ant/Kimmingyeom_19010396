function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    mu = 3.986004418e14;
    a=sqrt((mu)/((semimajor_axis)*(1 - eccentricity^2)));
    velocityInPQW = [a*(-sind(true_anomaly)) a*(eccentricity + cosd(true_anomaly)) 0];
    disp(['velocityInPQW = [' num2str(velocityInPQW(1)) ' ' num2str(velocityInPQW(2)) ' ' num2str(velocityInPQW(3)) ']T']);
end



