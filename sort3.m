% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 2

% inputs: x1, x2, x3 scalers
% output: assend row vector

function assend = sort3 (x1, x2, x3)
    if (x1 >= x2 && x1 >= x3)
        assend(1) = x1;
        if (x2 > x3)
            assend(2) = x2;
            assend(3) = x3;
        else 
            assend(2) = x3;
            assend(3) = x2;
        end
    elseif (x1 >= x2 && x1 <= x3)
        assend(1) = x2;
        if (x3 > x1)
            assend(2) = x3;
            assend(3) = x1;
        else 
            assend(2) = x1;
            assend(3) = x2;
        end
    else
        assend(1) = x3;
        if (x1 > x3)
            assend(2) = x1;
            assend(3) = x3;
        else 
            assend(2) = x3;
            assend(3) = x1;
        end
    end
    assend = assend(end:-1:1);
end