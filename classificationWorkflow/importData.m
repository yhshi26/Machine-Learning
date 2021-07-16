% Importing Data
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Task 1
letter = readtable("J.txt");
% This imports the data from the spreadsheet J.txt and stores it in a table called letter

% Task 2
plot(letter.X,letter.Y)

% Task 3
axis equal
% Correct the aspect ratio of the plot

% Task 4
letter = readtable("M.txt")
plot(letter.X,letter.Y)
axis equal
