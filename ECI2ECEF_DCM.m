function DCM = ECI2ECEF_DCM(time)

    jd = juliandate(time(1), time(2), time(3), time(4), time(5), time(6));
    
    GMST = siderealTime(jd);
    
    DCM = [cosd(GMST), sind(GMST), 0;
           -sind(GMST), cosd(GMST), 0;
           0, 0, 1];
end