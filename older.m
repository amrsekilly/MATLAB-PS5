% Introduction to Programming with MATLAB - MOOC
% Homework 5 - Problem 5

% inputs: y1, m1, d1, y2, m2, d2
% output isOlder

function older = older(y1, m1, d1, y2, m2, d2)
   if (y1 >= y2)
       if (y1 > y2)
           older = -1;
       else
           if (m1 >= m2)
               if (m1 > m2)
                   older = -1;
               else
                   if (d1 >= d2)
                       if (d1 > d2)
                           older = -1;
                          % fprintf('error here')
                       else
                           older = 0;
                       end
                   else
                       older = 1;
                   end
               end
           else
               older = 1;
           end
       end
   else
       older = 1;
   end
end