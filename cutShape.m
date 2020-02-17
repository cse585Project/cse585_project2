function [boundingbox, nRegions] = cutShape(filename)
% give boundingbox based on given file
% to get sub image, use imcrop(f,boundingbox(1).BoundingBox)
    f = imread(filename);
    CC = bwconncomp(f);
    boundingbox = regionprops(CC,'BoundingBox');
    nRegions = length(boundingbox);
end