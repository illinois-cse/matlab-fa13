%Script to estimate spring constant of a given spring from experimental
%data.
%Experimental data: displacement of spring for different masses
%From physics we know that F = mg and F = kd
% Hence by measuring slope of the best fit line, we can find the spring
% constant (k)
clear all
clc
clf

m= [5 10 20 50 100];                    %mass data (g)
d= [15.5 33.07 53.39 140.24 301.03];    %displacement data (mm) 
g = 9.81;                               %g = 9.81
F = m/1000 *g;                          %compute spring force (N)
a = polyfit(d,F,1);                     %fit a line (1st order polynomial) - use polyfit and store it in a
d_fit = 0:10:300;                       %make finer equally spaced points for plotting purposes
F_fit = polyval(a,d_fit);               %evaluate polynomial at above points and store in F_fit
plot(d,F,'o',d_fit,F_fit);              %plot data and the fitted curve
xlabel('Displacement \delta (mm)')
ylabel('Force (N)');
k = a(1);                               %spring constant
fprintf('Springconstant = %d  \n',k);