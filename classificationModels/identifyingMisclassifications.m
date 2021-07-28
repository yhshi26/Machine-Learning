% Investigate Misclassifications
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data and a trained kNN model and makes a confusion chart.
load letterdata.mat
load predmodel.mat
testdata
predLetter
confusionchart(testdata.Character,predLetter);

% Task 1
confusionchart(testdata.Character,predLetter,"RowSummary","row-normalized")

% Task 2
falseneg = (testdata.Character == "U") & (predLetter ~= "U");

% Task 3
fnfiles = testfiles(falseneg)
fnpred = predLetter(falseneg)

% Task 4
badU = readtable(fnfiles(4));
plot(badU.X,badU.Y)


