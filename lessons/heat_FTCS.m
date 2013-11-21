function [x,t,U] = heat_FTCS(nt,nx,alpha,L,tmax,Plots)
clc;
clf;
% Input: 
%   nt = number of steps. 
%   nx = number of mesh points in x direction.
%   alpha = diffusivity. 
%   L = length of the domain. 
%   tmax = maximum time for the simulation. 
%   Plots = flag (1 or 0) to control whether plot of the solution
%                           at the last time step is created.
% 
% Output: 
%   x = location of finite difference nodes
%   t = values of time at which solution is obtained (time nodes)
%   U = matrix of solutions: U(:,j) is U(x) at t = t(j)
%
% Use inputs: nt = 10,nx = 20, alpha = 0.1, L = 1,tmax = 0.5, Plots = 1
%=========================================================================
% --- Compute mesh spacing (dx) and time step (dt)



% --- Create arrays to save data for export
x = linspace(0,L,nx)';
t = linspace(0,tmax,nt);
U = zeros(nx,nt);     % Satisfies default boundary conditions
% --- Set IC and BC

                      % implies u0 = 0; uL = 0;
                      % Note that boundary conditions are already
                      % satisfied
                      
                      
% --- Loop over time steps

for                 % outer loop starts from second time step and goes upto nt
    for             % inner loop is for traversing x positions, goes from i = 2 to nx-1
                    % Solve for u here, use the difference equation
    end
end


% --- Plotting Routine
if Plots==1
    hold on
    a = ceil((3/4)*nt);
    b = ceil((1/2)*nt);
    c = ceil((1/4)*nt);
    plot(x,U(:,nt),'k');
    plot(x,U(:,a),'r--');
    plot(x,U(:,b),'b--');
    plot(x,U(:,c),'g--');
    hold off
    xlabel('x (rod)')
    ylabel('Temperature')
    title('Temperature distribution of the rod ')
    legend('At time = tmax','At time near 3/4 tmax','At time near 1/2tmax','Attime near 1/4tmax');
end