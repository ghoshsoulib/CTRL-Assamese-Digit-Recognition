function [binimg] = binarize(img)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[r,c] = size(img);
for i = 1:r
    for j = 1:c
        if(img(i,j) < 255)
            binimg(i,j) = 0;
        else
            binimg(i,j) = 1;
        end
    end
end

end

