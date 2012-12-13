function [ energy ] = satellite(start_altitude, start_velocity, timestep)

%{
    TODOS:
        LOOK INTO RETURNS, ARRAYS, AND FILE I/O
        make main program
        make energy checking sub-function or separate one
        make script to run both, checking values in a loop for question 2
        make script for question 3
        read up on gnuplot agin for q 4 and 5

    BELLS:
        test on computers: (1)
            maclab
            obx
            e3x
            igm computers (OMG FAST)
        EXTRA CRED: timy_earth
        rewrite for MOON
        rewrite with different integration methods (3)
            make script to compare nrg change with same timstep
            make script for timestep goals
        look into elliptical functions?
        
%}

%{

    NAME
        satellite -- track the motion of a satellite (hopefully) in orbit
        around earth.

    PARAMETERS

        start_alititude : 

    SIMULATION
        starts at degrees=0 BUT IN CARTESIAN, OH MAN

    NUMERICAL INTEGRATION
        

    VARIABLE CONVENTIONS
        arrays n stuff

    AUTHOR
        Kevin Granger -- kmg2728@rit.edu

%}

% Check initial values
if (start_altitude <= 0)
    error('Error: Your starting altitude must be above zero.');
elseif (timestep <= 0)
    error('Error: your timestep must be a positive number.');
end

% Set constants & initial values
BALL_MASS = 1; % kg
time = 0;
RUN_FOR = 5600 % s, the time to run until
global position = [start_altitude, 0];
global velocity = [0, start_velocity];
global acceleration = grav(position);
energy(1) = total_energy(mass, velocity);

% Set the file to print to
fid = fopen(satellite.data, 'w');

fprintf(1, 't  %5E  x  %5E  y %5E  vx  %5E  vy  %5E  a  %5E', time, position, velocity, acceleration);


fprintf(fid, 't 

while (time <  RUN_FOR)

    
    
    this is a new timestep! therefore,
    "old" values = values from before
    print to screen and file
    
time++

when done, recalc energy(2)

fclose(fid);

end

% FUNCTION FOR GRAVITATIONAL COMPUTATION
function [ accel ] = grav(positions)

EARTH_MASS = 5.98e24; % kg
EARTH_RADIUS = 6.37e6; % m
GRAVITATION = 6.67e-11; % N-m^2/kg^2

%overall gravity


end