% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 6

% takes the starting times of two movies, 
% hr1, hr2, min1, min2
% and their durations, durmin1, durmin2

% they must not overlap
% we are not going to wait more than 30 minutes 
% between the end of one and the beginning of the next.


function nOverlap = movies (hr1, min1, durmin1, hr2, min2, durmin2)
    start1 = hr1 * 60 + min1;
    start2 = hr2 * 60 + min2;
    endtime1 = start1 + durmin1;
    endtime2 = start2 + durmin2;
    if (endtime2 < start1)
        if((start1 - endtime2) <= 30)
            nOverlap = 1;
        else
            nOverlap = 0;
        end
    else
        if (endtime1 <= start2)
            if ((start2 - endtime1) <= 30)
                nOverlap = 1;
            else 
                nOverlap = 0;
            end
        else
            nOverlap = 0;
        end
    end
end