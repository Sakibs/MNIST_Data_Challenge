function [ mn, ix ] = my_min( arr )
%MY_MIN Summary of this function goes here
%   Detailed explanation goes here
    ix = 1;
    mn = arr(1);
    
    for i=2:10
        if arr(i) < mn
            mn = arr(i);
            ix = i;
        end
    end
end

