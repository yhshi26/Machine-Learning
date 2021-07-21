% Calculating Correlations
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads and plots the data.
load sampleletters.mat
plot(v2.X,v2.Y,"o-")

% Task 1
C = corr(v2.X,v2.Y)
% C is NaN because of missing values

% Task 2
C = corr(v2.X,v2.Y,"Rows","complete")
% recalculate avoiding missing values to get C that is a number

% Task 3
% Use concatenation ([ ]) to make a matrix M with four columns: the first half (elements 1 to 11) of v2.X, 
% the first half of v2.Y, the second half (elements 12 to 22) of v2.X, the second half of v2.Y
M = [v2.X(1:11) v2.Y(1:11) v2.X(12:22) v2.Y(12:22)]

% Task 4
Cmat = corr(M,"Rows","complete")

  
  
