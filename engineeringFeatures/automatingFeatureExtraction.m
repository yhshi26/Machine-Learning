% Create a Feature Extraction Function
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data and calculates some features for one letter.
load sampleletters.mat
letter = b1;

aratio = range(letter.Y)/range(letter.X)
idxmin = islocalmin(letter.X,"MinProminence",0.1);
numXmin = nnz(idxmin)
idxmax = islocalmax(letter.Y,"MinProminence",0.1);
numYmax = nnz(idxmax)
dT = diff(letter.Time);
dXdT = diff(letter.X)./dT;
dYdT = diff(letter.Y)./dT;
avgdX = mean(dXdT,"omitnan")
avgdY = mean(dYdT,"omitnan")
corrXY = corr(letter.X,letter.Y,"rows","complete")

featurenames = ["AspectRatio","NumMinX","NumMinY","AvgU","AvgV","CorrXY"];

% Task 1
feat = table(aratio,numXmin,numYmax,avgdX,avgdY,corrXY)

% Task 2
feat = table(aratio,numXmin,numYmax,avgdX,avgdY,corrXY,'VariableNames',featurenames)

% Task 3 (continued below)
featB2 = extract(b2)

% Task 3
function feat = extract(letter)
aratio = range(letter.Y)/range(letter.X)
idxmin = islocalmin(letter.X,"MinProminence",0.1);
numXmin = nnz(idxmin)
idxmax = islocalmax(letter.Y,"MinProminence",0.1);
numYmax = nnz(idxmax)
dT = diff(letter.Time);
dXdT = diff(letter.X)./dT;
dYdT = diff(letter.Y)./dT;
avgdX = mean(dXdT,"omitnan")
avgdY = mean(dYdT,"omitnan")
corrXY = corr(letter.X,letter.Y,"rows","complete")

featurenames = ["AspectRatio","NumMinX","NumMinY","AvgU","AvgV","CorrXY"];

feat = table(aratio,numXmin,numYmax,avgdX,avgdY,corrXY,'VariableNames',featurenames)
end

