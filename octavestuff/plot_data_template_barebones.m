clear all; clf;
% the percent sign marks a line in this file as a comment
% this file is a bare-bones example of how to make simple plots in octave
% you can copy this file and edit it for pretty much
% any plotting you will be doing in this course. Use "notepad++" or some such to edit it, not Word or any other
% word processing program.

% put this file where your data is or where your .m files are saved by default
% run octave and change directories to where your data is. For example: cd 'H:\22data'
% file names/directories must always be given in single quotes
% to execute this file, in octave say: plot_data_template_barebones at the command prompt (unless you renamed this file which
% would probably be smart 

% Then the data in file elwe.dat (must be in current directory) is plotted
% data in elwe.dat is one x y dy point per line 

%read data from file into appropriate vectors
filename="elwe.dat"    
fid=fopen(filename)
[x,y,dy] = textread(filename,"%f %f %f");
fclose(fid);

% "pause" or "pause (number)" pauses the processing of the .m file until you hit any character on keyboard or until "number" of seconds has elapsed. This keeps things from running away and in some cases, keeps octave from getting confused.

% Plots

plt2=errorbar(x,y,dy);
set(plt2,"linestyle","none")
set(plt2,"marker","x")
set(plt2,"markersize", 1)

%to make a pretty graph, you can add some text things:

%graph title (cenertered on top of plot region)
title("Data and Fit")
%below are axes xlabels for plot
xlabel("X Label, (some units)")
ylabel("Y Label, (other units)")
pause()
% If you want to put some text at some position on the screen, the following works puts the quoted text string at the coordinates
% x=34. y=.75 note these are in graph units and the text string can cause rescaling of axes if outside the range you want to display
%text(34.,.75,"Arbitrary Text")

%how to include text string at location and variable values on a plot if you want
%myvariable=1.432
%text(15,3,["myvariable=" num2str(myvariable)])

% you may note that autoscaling in octave may not be very good, to force it you may try
% syntax is xlo xhi ylo yhi . you can use just xlo xhi and y will autoscale.
%axis([0 10 0 50])

