% ODE describing the motion of a falling object:
%==========================================================
% m . d^2y/dt^2 = -m.g + b.(dy/dt)^2
% Where,
% m = 70 Kg ,mass of the object 
% g = 9.81 m/s^2 ,acceleration due to gravity
% b = 0.25 Kg/s ,coefficient of air friction
%==========================================================
% Initial conditions
% at time = 0, v = 0 m/s(velocity) and y = 2000m (height)
%==========================================================
% STEP 1: Write the equations as a set of 1st order ODEs 
%===========================================================
% The 2nd order ODE can be written down as 1st order system:
%
% dy/dt = v                   - equation 1
% dv/dt = -g + (b/m)(v^2)     - equation 2
%==========================================================
%STEP 3: Use the built in ODE solver
%==========================================================



% where [0,30] is the time span
% where [2000;0] are the initial conditions 
% Note: initial conditions are in same order as input yv of function yvp

%===========================================================================
%STEP 5: Extract the desired variables from the output and interpret the results
%===========================================================================

% velocity versus time plot


% Y (height) vs time plot




%==========================================================
%STEP 2: Write a function to compute the State derivative
%==========================================================
                % Input is t and column vector yv

 % 1st element of yv is height
 % 2nd element is velocity
 % represents [dy/dt   ;  dv/dt]
 % write return for this function !!



