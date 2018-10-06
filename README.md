# CSC781M

**Narciso, Iñaki O.**

**MSCS**

AY 2018-2019 Term 1

Submitted on:
**7 Oct, 2018**

## Exercise 2: Octave Programming Exercises

To demonstrate your mastery of basic Octave programming, please accomplish the ff. programming tasks 

### MP1: Generating signals and plotting them.

Instructions:

1.  Generate a series of values starting from -100 to 100, in increments of 4. Name it as variable x.
2.  Create a new variable y with all of the elements reversed.
3.  Calculate the Hadamard product of x and y. Name it as variable z.
4.  Plot x, y, and z with graph on top of the other. 

Program:
m-file: **signalplot.m**

Running _signalplot.m_:
> Execute signalplot in octave gui or cli:
> $ octave
```matlab
octave:1> signalplot
```
Output:
![enter image description here](https://raw.githubusercontent.com/iomusashi/CSC781M/master/mp1.jpg)

### MP2: Plotting functions and finding the absolute maximum and absolute minimum in Octave.

Instructions:

1.  Plot the function y(x) = x3  - 5x2 -4x + 20 for values of x ranging from -5 to 5, in increments of 0.5.
2.  From the graph, what are the values of x where the maximum, minimum and zeros of the function y(x) occur?
3.  Automatically determine the zeros of y(x).

Program:
m-file: **functionplot.m**

Running _functionplot.m_:
> Execute signalplot in octave gui or cli:
> $ octave
```matlab
octave:1> functionplot
```
Output:
![enter image description here](https://raw.githubusercontent.com/iomusashi/CSC781M/master/mp2.jpg)

Discussion:
> - The minimum value of y(x) is marked with a downward facing red-triangle.
> - The maximum value of y(x) is marked with an upward facing yellow triangle.
> - Occurrences of zeroes are detected and marked with a purple circle.

### MP3: Fibonacci Series: 

Instruction:

Take a numeric value N, then return the first N elements.

