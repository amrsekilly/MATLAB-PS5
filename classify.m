% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 4

% input x
% If x is an empty matrix, the function returns -1
% If x is a scalar, it returns 0. 
% If x is a vector, it returns 1. 
% Finally, if x is none of these, it returns 2.

function classVal = classify(x)
    if (size(x, 2) == 0 || size(x,1) == 0)
        classVal = -1;
    elseif (size(x, 2) == 1 && size(x, 1) == 1)
        classVal = 0;
    elseif ((size(x, 2) > 1 && size(x, 1) == 1) || (size(x, 1) > 1 && size(x, 2) == 1))
        classVal = 1;
    else
        classVal = 2;
    end
end