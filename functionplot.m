####################################################################################################
#
# CSC781M: DSP/DIP
# Exercise 2
#
# functionplot.m
#
# Author:  Narciso, I.O.
# Created: 7 Oct, 2018
#
####################################################################################################
NaN; # non-function first token – Prevents octave into thinking this is a function file.
# Functions in octave are not hoisted

# x is a matrix, essentially, all arithmetic operations are applied element-wise.
#
# Since a singular matrix x is used as paramater, we can be sure that no
# changes in the matrix's dimensions are applied, so it's safe to apply matrix subtraction,
# which is an element-wise subtraction. Adding 20 is performed element-wise as well.
# 1a.  y(x) = x^3 - 5x^2 - 4x + 20
function value = y(x)
  value = ((x.^3) - ((x.^2).*5) - (x.*4)).+20
endfunction
####################################################################################################
# 1b. Values of x ranging from -5 to 5, in increments of 0.5.
x = [-5:0.5:5];
y =  y(x);
####################################################################################################
# 1c. Plot the function y(x)
minY = min(y);
maxY = max(y);
count = max(size(x)); # size returns a 1x2 vector depicting row column dimensions, 
# getting the max returns the scalar size.

elementIndices = linspace(minY, maxY, count); # Create an equal linear distribution.

figure;
plot(x, y); # Plot the indices in x-axis, values in y-axis.
hold on;

# Plot configurations:
title(cstrcat('Plotting y(x) for each element x in Vector x.'));

# Axis configurations:
xlabel 'Range of values: -5 to 5';
ylabel 'y(x) = x^3 - 5x^2 - 4x + 20';
axis tight; 
####################################################################################################
# 2a. Mark the minimum:
indexMinY = find(y == minY);
plot(x(indexMinY), y(indexMinY), 'v');
# 2b. Mark the maximum:
indexMaxY = find(y == maxY);
plot(x(indexMaxY), y(indexMaxY), '^');
# 2c. Mark all occurrences of zeroes in the plot:
zeroes = find(y == 0);
# 2:
disp('The minimum value of y(x):');
disp(minY);
disp('The minimum value of y(x) occured at index: ');
disp(indexMinY);

disp('The maximum value of y(x):');
disp(maxY);
disp('The maximum value of y(x) occured at index: ');
disp(indexMaxY);

disp('The zeroes in y(x) were detected at indices: ');
disp(zeroes);

# 3.
plot(x(zeroes), y(zeroes), 'o');
####################################################################################################
