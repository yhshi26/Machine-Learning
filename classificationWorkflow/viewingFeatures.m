% View Features
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data.
load featuredata.mat
features

% Task 1
scatter(features.AspectRatio,features.Duration)


% Task 2
% The gscatter function makes a grouped scatter plot – that is, a scatter plot where the points are colored according to a grouping variable
% gscatter(x,y,g)
gscatter(features.AspectRatio,features.Duration,features.Character)


