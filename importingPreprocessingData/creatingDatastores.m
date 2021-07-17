% Make a Datastore
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Task 1
letterds = datastore("*_M_*.txt")
% use wildcards (*) to make a datastore to files or folders matching a particular pattern

% Task 2
data = read(letterds)
% use the read function to import the data from a file in the datastore
% using the read function the first time will import the data from the first file
% using it a second time will import the data from the second file, and so on

% Task 3
plot(data.X,data.Y)

% Task 4
data = read(letterds)
plot(data.X,data.Y)

% Task 5
data = readall(letterds)
% readall function imports the data from all the files in the datastore into a single variable

plot(data.X,data.Y)


