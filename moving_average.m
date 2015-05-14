% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 8

% takes a scalar called x as an input argument and returns a scalar. 

function perMean = moving_average (x)
    % persistent var buffer
    persistent buffer;
    % buffer can hold a maximum of 25 inputs.
    if (length(buffer) == 25)
        buffer(1) = [];
    end
    buffer(end+1) = x;
    perMean = mean(buffer);
end