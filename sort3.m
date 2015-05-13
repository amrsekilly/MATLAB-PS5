% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 3

% inputs: x1, x2, x3 scalers
% output: assend row vector

function assend = sort3 (x1, x2, x3)
    assend = [];
    if (x1 > x2)
        if (x1 > x3)
            if (x2 > x3)
                assend(end+1) = x3;
                assend(end+1) = x2;
                assend(end+1) = x1;
            else
                assend(end+1) = x2;
                assend(end+1) = x3;
                assend(end+1) = x1;
            end
        else
            assend(end+1) = x2;
            assend(end+1) = x1;
            assend(end+1) = x3;
        end
    else
        if (x2 > x3)
            if(x1 > x3)
                assend(end+1) = x3;
                assend(end+1) = x1;
                assend(end+1) = x2;
            else
                assend(end+1) = x1;
                assend(end+1) = x3;
                assend(end+1) = x2;
            end
        else
            assend(end+1) = x1;
            assend(end+1) = x2;
            assend(end+1) = x3;
        end
    end
    
end