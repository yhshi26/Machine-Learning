% Make Predictions with a Classification Model
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data and fits a kNN model.
load letterdata.mat
traindata
knnmodel = fitcknn(traindata,"Character","NumNeighbors",5,"Standardize",true,"DistanceWeight","squaredinverse");
testdata

% Task 1
predLetter = predict(knnmodel,testdata)

% Task 2
misclassrate = sum(predLetter ~= testdata.Character)/numel(predLetter)

% Task 3
testloss = loss(knnmodel,testdata)


