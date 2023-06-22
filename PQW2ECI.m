function rotation_matrix = PQW2ECI(arg_prg,inc_angle,RANN)
d2r = pi/180;
arg_prg_rad = arg_prg*d2r;
inc_angle_rad = inc_angle*d2r;
RANN_rad = RANN*d2r;
R_w3=[cos(arg_prg_rad) sin(arg_prg_rad) 0;
    -sin(arg_prg_rad) cos(arg_prg_rad) 0;
    0 0 1];
R_i1=[1 0 0;
    0 cos(inc_angle_rad) sin(inc_angle_rad);
    0 -sin(inc_angle_rad) cos(inc_angle_rad)];
R_o3=[cos(RANN_rad) sin(RANN_rad) 0;
    -sin(RANN_rad) cos(RANN_rad) 0;
    0 0 1];
rotation_matrix = transpose((R_w3*R_i1*R_o3));