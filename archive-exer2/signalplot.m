####################################################################################################
#
# CSC781M: DSP/DIP
# Exercise 2
#
# signalplot.m
#
# Author:  Narciso, I.O.
# Created: 7 Oct, 2018
#
####################################################################################################
NaN; # non-function first token – Prevents octave into thinking this is a function file.
# If the first token in the file is a function, octave treats it as a function file.

# Functions in octave are not hoisted, we need to declare it first before using it.
function createSubplot(vector, vectorName, description)

  count = max(size(vector)); # size returns a 1x2 vector depicting row column dimensions, 
  # getting the max returns the scalar size.

  elementIndices = linspace(0, count, count); # Create an equal linear distribution.

  plot(elementIndices, vector); # Plot the indices in x-axis, values in y-axis.

  # Plot configurations:
  title(cstrcat('Vector ', vectorName, ': ', description, '.'));
  xlabel(cstrcat('Element indices: Vector ', vectorName));
  ylabel(cstrcat('Values: Vector ', vectorName));
  axis tight; 
endfunction
####################################################################################################
# 1. Generate a series of values starting from -100 to 100, in increments of 4. Name it as x.
x = [-100:4:100];
####################################################################################################
# 2. Reverse all elements of x. Name it as y.
y = fliplr(x);
####################################################################################################
# 3. Perform Hadamard product of x and y. Name it as z.
z = x .* y;
####################################################################################################
# 4. Plot x, y, and z with graph on top of the other.
figure;
# subplot for all values of x
subplot(3, 1, 1);
createSubplot(x, 'x', 'Series of values from -100 to 100, step of 4')
# subplot for all values of y
subplot(3, 1, 2)
createSubplot(y, 'y', 'Reverse values of Vector x')
# subplot for all values of z
subplot(3, 1, 3)
createSubplot(z, 'z', 'Hadamard product of x and y')
####################################################################################################
