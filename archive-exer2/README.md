# CSC781M: Exercise 2

**Narciso, Iñaki O.**

**MSCS**

AY 2018-2019 Term 1

Submitted on:
**7 Oct, 2018**

Formatted document:
See **documentation.pdf**.

### MP1: Generating signals and plotting them.
Instructions:
1.  Generate a series of values starting from $-100$ to $100$, in increments of 4. Name it as variable $x$.
2.  Create a new variable $y$ with all of the elements reversed.
3.  Perform element-by-element multiplication of $x$ and $y$ (also called the Hadamard product of $x$ and $y$). Name it as variable $z$.
4.  Plot $x$, $y$, and $z$ with graph on top of the other.

Program Type: **Source file**
m-file: **signalplot.m**

Running _signalplot.m_:
> Execute signalplot in octave gui or cli:
> $ octave
```matlab
octave:1> signalplot
```
>Figure 1.0: Plotting signals produced for vectors $x$, $y$, and $z$.
![Figure 1: Signals generated and plotted.](https://raw.githubusercontent.com/iomusashi/CSC781M/master/mp1.jpg)

---

### MP2: Plotting functions and finding the absolute maximum and absolute minimum in Octave.
Instructions:
1.  Plot the function $y(x)={ x }^{ 3 }–{ 5x }^{ 2 }–4x+20$ for values of $x$ ranging from $-5$ to $5$, in increments of $0.5$.
3.  From the graph, what are the values of $x$ where the maximum, minimum and zeros of the function $y(x)$ occur?
4.  Automatically determine the zeros of $y(x)$.

Program Type: **Source file**
m-file: **functionplot.m**

Running _functionplot.m_:
> Execute signalplot in octave gui or cli:
> $ octave
```matlab
octave:1> functionplot
```
> Figure 2.0: Function $y(x)$, with zeros, min, and max marked.
![enter image description here](https://raw.githubusercontent.com/iomusashi/CSC781M/master/mp2.jpg)

Discussion:
> - The minimum value of $y(x)$ is marked with a downward facing red-triangle.
> - The maximum value of $y(x)$ is marked with an upward facing yellow triangle.
> - Occurrences of zeroes are detected and marked with a purple circle.

---

### MP3: Fibonacci Series: 

Instructions:
1. Take a numeric value $N$, then return the first $N$ elements.

Program Type: **Function file**
m-file: **functionplot.m**

Running _functionplot.m_:
> Execute signalplot in octave gui or cli:
> $ octave
```matlab
octave:1> fibonacci 10
octave:2> fibonacci =
                   0 1 1 2 3 5 8 13 21 34
```
Implementation: **Dynamic programming**
> Each element computed are memoized instead of being recomputed recursively.
Time-complexity: **O(n)**