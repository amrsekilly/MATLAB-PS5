% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 7

% pts, is an integer, 

% but amp, f1, and f2 and are not necessarily integers

% Output argument s1 is a row vector \
% whose length (number of elements) equals pts.

% s1 are the values of the sine contains f1 periods
% s2 contains f2 periods

% sums is the sum of s1 and s2

% If f2 is omitted, then it should be set to a value that is 5% greater than f1.
% If f1 is omitted also, then it should be set to 100
% If amp is not provided, then it should default to 1
% if pts is omitted as well, then it should be set to 1000.

function [s1, s2, sums] = sines(pts,amp,f1,f2)     
    % check for pts as integer
   % if (pts == fix(pts))   
         % check for omitted values 
        if (nargin < 1)
            % pts is not provided
            pts = 1000;
            amp = 1;
            f1 = 100;
            f2 = f1 + 0.05*f1;
        elseif (nargin < 2)
            amp = 1;
            f1 = 100;
            f2 = f1 + 0.05*f1;
        elseif (nargin < 3)
            % f1 is ommited
            f1 = 100;
            f2 = f1 + 0.05*f1;
        elseif (nargin < 4)
            % f2 is omitted
            f2 = f1 + 0.05*f1;
        end
        % do the calculations here 
        s1 = repmat((amp * sin(0:f1)), 1, pts);
        s2 = repmat((amp * sin(0:f2)), 1, pts);
        s1 = s1(1:pts);
        s2 = s2(1:pts);
        sums = s1 + s2;
   % else
   %     error('pts value must be integer');
  %  end
        
end





