% Calculate Basic Statistics
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads and plots the data.
load sampleletters.mat
plot(b1.Time,b1.X)
hold on
plot(b2.Time,b2.X)
hold off
plot(b1.Time,b1.Y)
hold on
plot(b2.Time,b2.Y)
hold off

% Task 1
aratiob = range(b1.Y)/range(b1.X)

% Task 2
medxb = median(b1.X,"omitnan")
medyb = median(b1.Y,"omitnan")

% Task 3
% The spread of values can be measured with the mean absolute deviation (MAD), standard deviation, and variance
% Each of these calculate the average of some measure of the deviation from the mean
devxb = mad(b1.X)
devyb = mad(b1.Y)

% Task 4
aratiov = range(v1.Y)/range(v1.X)
medxd = median(d1.X,"omitnan")
medyd = median(d1.Y,"omitnan")
devxm = mad(m1.X)
devym = mad(m1.Y)

