% Preprocessing Data
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data.
letter = readtable("M.txt")

% Task 1
letter.X = letter.X*1.5

% View the result
plot(letter.X,letter.Y)
axis equal

% Task 2
letter.Time = (letter.Time-letter.Time(1))/1000

% View the result
plot(letter.Time,letter.X)
  axis equal
plot(letter.Time,letter.Y)
  axis equal

% Further Practice
% Test for J.txt and V.txt
letter = readtable("J.txt")
plot(letter.X,letter.Y)
  axis equal
letter = readtable("V.txt")
plot(letter.X,letter.Y)
  axis equal

