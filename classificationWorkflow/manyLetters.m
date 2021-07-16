% Apply Model to Many Letters
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data.
load featuredata13letters.mat
features
testdata

% Task 1
gscatter(features.AspectRatio,features.Duration,features.Character)
xlim([0 10])


% Task 2
knnmodel = fitcknn(features,"Character","NumNeighbors",5);
predictions = predict(knnmodel,testdata);


% Task 3
misclass = sum(predictions~=testdata.Character)/numel(predictions)
confusionchart(testdata.Character,predictions)

  
