function [ dist ] = compute_avg_dist( pt, data )
%COMPUTE_AVG_DIST Summary of this function goes here
%   Detailed explanation goes here
    % distances = sqrt( (data(:,1)-pt(1)).^2 + (data(:,2)-pt(2)).^2 + (data(:,3)-pt(3)).^2);
    % dist = mean(distances);
    
    % computing means first is slightly better
    meanX = mean(data(:,1));
    meanY = mean(data(:,2));
    meanZ = mean(data(:,3));
    dist = sqrt( (meanX-pt(1)).^2 + (meanY-pt(2)).^2 + (meanZ-pt(3)).^2 );
    
end

