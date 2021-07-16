% What aspects of these letters could be used to distinguish a J from an M or a V? Instead of using the raw signals, the goal is to compute values that distill the entire 
% signal into simple, useful units of information known as features.

% For the letters J and M, a simple feature might be the aspect ratio (the height of the letter relative to the width). A J is likely to be tall and narrow, whereas an M 
% is likely to be more square. Compared to J and M, a V is quick to write, so the duration of the signal might also be a distinguishing feature.
  
% Calculate Features
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads and preprocesses the data.
letter = readtable("M.txt");
letter.X = letter.X*1.5;
letter.Time = (letter.Time - letter.Time(1))/1000
plot(letter.X,letter.Y)
axis equal

% Task 1
dur = letter.Time(end)


% Task 2
% The range function returns the range of values in an array. That is, range(x) is equivalent to max(x) - min(x)
aratio = range(letter.Y)/range(letter.X)




