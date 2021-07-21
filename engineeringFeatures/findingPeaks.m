% Find Peaks in Signals
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads and plots the data.
load sampleletters.mat
plot(m1.Time,m1.X)

% Task 1
idxmin = islocalmin(m1.X)
idxmax = islocalmax(m1.X)
Visualize the results
plot(m1.Time,m1.X)
hold on
plot(m1.Time(idxmin),m1.X(idxmin),"o")
plot(m1.Time(idxmax),m1.X(idxmax),"s")
hold off

% Task 2
[idx,prom] = islocalmin(m1.X)
plot (m1.Time,prom)

% Task 3
idxmin = islocalmin(m1.X,"MinProminence",0.1)
idxmax = islocalmax(m1.X,"MinProminence",0.1)
plot(m1.Time,m1.X)
hold on
plot(m1.Time(idxmin),m1.X(idxmin),"o")
plot(m1.Time(idxmax),m1.X(idxmax),"s")
hold off

% Further Practice
% You can pass idxmin to the nnz or sum functions to count the number of minima. Try calculating the number of local minima and maxima in different signals. 
% Could this be a useful feature to distinguish between letters?


