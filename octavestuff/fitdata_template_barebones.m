clear all; clf;
% the percent sign marks a line in this file as a comment
% this file is a bare-bones example of how to do weighted, non-linear least squares fits of function to
% data using octave. you can copy this file and edit it for pretty much
% any analysis we will be doing in this course. Use "notepad++" or some such to edit it, not Word or any other
% word processing program.

% put this file where your data is or where your .m files are saved by default
% run octave and change directories to where your data is. For example: cd 'H:\22data'
% file names/directories must always be given in single quotes
% to execute this file, in octave say: fitdata 

% Then the data in file elwe.dat (must be in current directory) is plotted
% data in elwe.dat is one y x pair per line (the "using 1:2:3 with errorbars" says 
% to use column 1 as x, 2 as y, and 3 as errorbars on y. I made up big errorbars
% in the sample file so you can see them on the plot
% the default is to assume x y in that order, but you can change it with "using"

% Define the function that will be fit (its name is "line_func" and takes parameters "par"
% "par" represents the parameters that the fitting process will adjust to get best agreement btw. your function and your data 
function [y]=line_func(x,par)
  y=par(1)*x+par(2);
end

%read data from file into appropriate vectors
filename="elwe.dat"    
fid=fopen(filename)
[x,y,dy] = textread(filename,"%f %f %f");
fclose(fid);
 
%initial values for fit parameters
m=1.;
b=1.;

%put them in parameter matrix
pin=[m,b];

% load the octave package that has the fitting routine in it
pkg load optim


% the weights are used by the fitting routine to determine how much a given data point "counts": 
% points with small error bars count more. 1/(errorbar)^2 is the most statistically meaningful weight in this context
% if you don't have errorbars, make a vector the same length as y with 1's for values (or put ones in 3rd column of data file
weights=1./(dy.*dy);

% now fit the function f(x) to the data in elwe.dat 
[f,p,cvg,iter,corp,covp]=leasqr(x,y,pin,"line_func",.0001,20,weights);
% the fitting is weighted by the 1/uncertainty^2--data with small errors counts more

% in that case, the reduced chisquare (see below) won't mean anything quantitative

% a limitation of many fitting routines is not being able to handle errors on both x an y
% this is true of leasqr also. If one variable has much smaller relative errors, use that
% as x in the fit. If the errors in x and y are similar, there are some kludges to get you
% sort of where you would like to be: consult me in class or your local statistician


% "pause" or "pause (number)" pauses the processing of the .m file until you hit any character on keyboard or until "number" of seconds has elapsed. This keeps things from running away and in some cases, keeps octave from getting confused.

% always plot the data and the final fit together to check how things went. 
% Plots
subplot(3,1,1)

plt2=errorbar(x,y,dy);
set(plt2,"linestyle","none")
set(plt2,"marker","x")
set(plt2,"markersize", 1)

%to make a pretty graph, you can add some text things by uncommenting the lines below. Make sure your plot looks good before you start adding these things.

%graph title (cenertered on top of plot region)
title("Data and Fit")
%below are axes xlabels for plot
xlabel("X Label, (some units)")
ylabel("y label for subplot 1")
printf ("press any character or return to continue");
pause()
% If you want to put some text at some position on the screen, the following works puts the quoted text string at the coordinates
% x=34. y=.75 note these are in graph units and they text string can cause rescaling of axes if outside the range you want to display
%text(34.,.75,"Arbitrayr Text")

%how to include text strin at location and variable values on a plot if you want
%text(15,3,["Chisquar/dof=" num2str(chisqnd)])

%now plot the fit function evaluated at the x data points and connect with line
%also make it red so it's clear it is different (predefined colors=1,2,3,4,5,6

% hold on means don’t erase this subplot when you go to make the next one
hold on;
plot(x,line_func(x,p),'1');
 
%plot the residuals (data minus fit) with errorbars in a subplot below
 subplot(3,1,3);
 hold on;
errorbar(x,y-line_func(x,p),1./weights);
%next, show a zeroline (since residuals should be around zero for good model/fit
plot([min(x);max(x)],[0;0],'0')
title("Data minus fit")
xlabel("X Label, (same units)")
ylabel("ylabel for subplot 2")
% you may note that autoscaling in octave may not be very good, to force it you may try
% syntax is xlo xhi ylo yhi . you can use just xlo xhi and y will autoscale.
%axis([0 10 0 50])

% If the fit looks nothing like the data, you could have a bad model 
% or the fit algorithm may have gotten itself lost. This latter can happen if the initial parameter values
% were way off and the function is fairly complicated. Try imroving the initial values of the parameters
% and rerun this file
hold off
% Print out the results
p
covp
sqrt(covp) 
%covp is the covariance matrix of the parameters. The diagonals are the squares of the 
%estimates of the uncertainties of the parameters, the off diagonal elements reflects how much 
%the parameter estimates are correlated (0=uncorrelated, 1=completely correlated). Note covp is 
%symmetric about the diagonal (covp(1,2)=covp(2,1))

chisq=sum((y-line_func(x,p)).^2.*weights.^2)
% the above line is the chi-square. 
chisqnd=chisq/(length(y)-length(p))
% the above line is the chi-square per degree of freedom
% degrees of freedom are number of x-y pairs minus the number of parameters

