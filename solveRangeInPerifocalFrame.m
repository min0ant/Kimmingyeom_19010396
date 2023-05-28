function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    r = (semimajor_axis * (1 - eccentricity^2)) / (1 + eccentricity * cosd(true_anomaly));
    rangeInPQW = [r*cosd(true_anomaly)  r*sind(true_anomaly) 0];
    disp(['rangeInPQW = [' num2str(rangeInPQW(1)) ' ' num2str(rangeInPQW(2)) ' ' num2str(rangeInPQW(3)) ']T']);
end

