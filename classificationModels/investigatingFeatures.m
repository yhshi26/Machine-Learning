% Investigate Features of Misclassified Samples
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

Do not edit. This code loads the data and a trained kNN model.
load letterdata.mat
load predmodel.mat
traindata
testdata
predLetter

% Task 1
% Use logical indexing to extract the training data for just the letters N and U. Store the result in a table called UorN
% Similarly, extract the test data where the letter U was misclassified (i.e., the false negatives for U). Store the result in a table called fnU
idx = (traindata.Character == "N") | (traindata.Character == "U");
UorN = traindata(idx,:)

idx = (testdata.Character == "U") & (predLetter ~= "U");
fnU = testdata(idx,:)

% Task 2
% Use the removecats function to remove unused categories from UorN.Character. Assign the result back to UorN.Character.
UorN.Character = removecats(UorN.Character);

% Task 3
% Extract the numeric feature data from UorN and fnU into matrices called UorNfeat and fnUfeat, respectively.
% Note that the last variable in both tables is the response. All other variables are the features.
UorNfeat = UorN{:,1:end-1};
fnUfeat = fnU{:,1:end-1};

% Task 4
% Use the parallelcoords function to plot the features in the training data (UorNfeat), grouped by letter (UorN.Character).
parallelcoords(UorNfeat,"Group",UorN.Character)

% Task 5
% Use the plot function to add the values of the features for the fourth misclassified U to the plot as a black line. (The features for the misclassified letters are stored in the matrix fnUfeat).

hold on
plot(fnUfeat(4,:),"k")
hold off


