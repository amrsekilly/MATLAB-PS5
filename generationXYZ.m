% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 1

% inputs: Year of birth (YofBirth) "Positive int"
% outputs: his generation (generation) 
% X, Y, Z, O, or K

% O: births before 1966
% X: 1966-1980
% Y: 1981-1999
% Z: 2000-2012
% K: births after 2012

function generation = generationXYZ(YofBirth)
    if (YofBirth < 1966)
        generation = 'O';
    elseif (YofBirth >= 1966 && YofBirth <= 1980)
        generation = 'X';   
    elseif (YofBirth >= 1981 && YofBirth <= 1999)
        generation = 'Y';
    elseif (YofBirth >= 2000 && YofBirth <= 2012)
        generation = 'Z';
    else
        generation = 'K';
    end
end 