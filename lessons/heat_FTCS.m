function [x,t,U] = heat_FTCS(nt,nx,alpha,L,tmax,Plots)
clc
clf
% Input: nt = number of steps. 
% nx = number of mesh points in x direction.
% alpha = diffusivity. 
% L = length of the domain. 
% tmax = maximum time for the simulation. 
% Plots = flag (1 or 0) to control whether plot of the solution
% at the last time step is created.
% 
% Output: 
% x = location of finite difference nodes
% t = values of time at which solution is obtained (time nodes)
% U = matrix of solutions: U(:,j) is U(x) at t = t(j)
%
% Use inputs: nt = 10,nx = 20, alpha = 0.1, L = 1,tmax = 0.5, Plots = 1
%=========================================================================
% --- Compute mesh spacing and time step

% --- Create arrays to save data for export

% --- Set IC and BC
                      % implies u0 = 0; uL = 0;
                      % needed to apply BC inside time step loop
% --- Loop over time steps

% --- Plotting Routine
