% A classification model is a partitioning of the space of predictor variables into regions. Each region is assigned one of the output classes. In this simple example with two 
% predictor variables, you can visualize these regions in the plane.

% Fit a Model
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data.
load featuredata.mat
features

% Task 1
knnmodel = fitcknn(features,"Character")

% Task 2
predicted = predict(knnmodel,[4,1.2])

% Task 3
knnmodel = fitcknn(features,"Character","NumNeighbors",5)
predicted = predict(knnmodel,[4,1.2])

% Further Practice
predictions = predict(knnmodel,features)
[predictions,features.Character]

