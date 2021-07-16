% Typically you want to test the model by having it make predictions on observations for which you know the correct classification

% Evaluate the Model
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data.
load featuredata.mat
knnmodel = fitcknn(features,"Character","NumNeighbors",5);
testdata

% Task 1
predictions = predict(knnmodel,testdata)

% Task 2
iscorrect = (predictions==testdata.Character)

% Task 3
accuracy = sum(iscorrect)/numel(iscorrect)
% sum returns sum, numel returns total


% Task 4
% Rather than accuracy (the proportion of correct predictions), a commonly-used metric to evaluate a model is misclassification rate (the proportion of incorrect predictions)
% ~= operator determines inequality
misclassrate = sum(predictions~=testdata.Character)/numel(predictions)

% Task 5
% A confusion matrix shows the number of observations for each combination of true and predicted class
confusionchart(testdata.Character,predictions)


