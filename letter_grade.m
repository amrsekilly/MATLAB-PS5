% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 2

% Input: positive integer called score
% eturns a letter grade

% A: 91 and above; 
% B: 81-90; 
% C: 71-80; 
% D: 61-70; 
% F: below 61

function grade = letter_grade (score)
    if (score >= 91)
        grade = 'A';
    elseif (score >= 81 && score <= 90)
        grade = 'B';
    elseif (score >= 71 && score <= 80)
        grade = 'C';
    elseif (score >= 61 && score <= 70)
        grade = 'D';
    else
        grade = 'F';
    end
end