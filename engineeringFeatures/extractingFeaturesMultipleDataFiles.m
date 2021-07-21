% Add a Feature Extraction Function
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code creates a datastore and adds a preprocessing function as a transformation to it.
letterds = datastore("*.txt");
preprocds = transform(letterds,@scale)

% Task 1
featds = transform(preprocds,@extract)

% Task 2
data = readall(featds)
scatter(data.AspectRatio,data.CorrXY)

% Task 3
knownchar = extractBetween(letterds.Files,"_","_")

% Task 4
knownchar = categorical(knownchar)

% Task 5
data.Character = knownchar
gscatter(data.AspectRatio,data.CorrXY,data.Character)

% Local Functions
function data = scale(data)
% Normalize time [0 1]
data.Time = (data.Time - data.Time(1))/(data.Time(end) - data.Time(1));
% Fix aspect ratio
data.X = 1.5*data.X;
% Center X & Y at (0,0)
data.X = data.X - mean(data.X,"omitnan");
data.Y = data.Y - mean(data.Y,"omitnan");
% Scale to have bounding box area = 1
scl = 1/sqrt(range(data.X)*range(data.Y));
data.X = scl*data.X;
data.Y = scl*data.Y;
end

function feat = extract(letter)
% Aspect ratio
aratio = range(letter.Y)/range(letter.X);
% Local max/mins
idxmin = islocalmin(letter.X,"MinProminence",0.1);
numXmin = nnz(idxmin);
idxmax = islocalmax(letter.Y,"MinProminence",0.1);
numYmax = nnz(idxmax);
% Velocity
dT = diff(letter.Time);
dXdT = diff(letter.X)./dT;
dYdT = diff(letter.Y)./dT;
avgdX = mean(dXdT,"omitnan");
avgdY = mean(dYdT,"omitnan");
% Correlation
corrXY = corr(letter.X,letter.Y,"rows","complete");
% Put it all together into a table
featurenames = ["AspectRatio","NumMinX","NumMinY","AvgU","AvgV","CorrXY"];
feat = table(aratio,numXmin,numYmax,avgdX,avgdY,corrXY,'VariableNames',featurenames);
end
