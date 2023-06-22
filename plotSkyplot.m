function plotSkyplot(ENU, el_mask)
   
    el = elevation(ENU, el_mask);

    az = azimuth(ENU);

    figure;
    polarplot(deg2rad(az), 90 - el, 'bo');
    title('Skyplot');
    rlim([0 90]);                         
    rticklabels({'90°', '75°', '60°', '45°', '30°', '15°', '0°'}); 
    thetaticks(0:30:330);                  
    thetaticklabels({'E', '60°', '30°', 'N°', '330°', '300°', 'W°', '240°', '210°', 'S', '150°', '120°'}); 
end