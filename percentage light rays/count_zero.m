function [count] = count_zero(img)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

count = 0;
[r,c] = size(img);

for i = 1:r
    for j = 1:c
        if (img(i,j) == 0)
            count = count + 1;
        end
    end
end

end

