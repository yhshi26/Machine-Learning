% Add a Preprocessing Function
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code creates a datastore, imports data, and visualizes it.
letterds = datastore("*_M_*.txt");
data = read(letterds);
data = scale(data);
plot(data.X,data.Y)
axis equal
plot(data.Time,data.Y)
ylabel("Vertical position")
xlabel("Time")

% Task 2
% To use a function as an input to another function, create a function handle by adding the @ symbol to the beginning of the function name
% transform(ds,@myfun)
% A function handle is a reference to a function
% Without the @ symbol, MATLAB will interpret the function name as a call to that function
preprocds = transform(letterds,@scale)

% Task 3
data = readall(preprocds)
plot(data.Time,data.Y)

% Tasks 1, 4, & 5
function data = scale(data)
    data.Time = (data.Time - data.Time(1))/1000;
    data.X = 1.5*data.X;
    data.X = data.X - mean(data.X,"omitnan");
    data.Y = data.Y - mean(data.Y,"omitnan");
    % You can use the "omitnan" option to have statistical functions like mean ignore missing values
end
