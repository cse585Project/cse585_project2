function Ur = sizeDistribution(filename)
% filename target image
% Ur a matrix of all sub images given by filename
[boundingbox, nRegions] = cutShape(filename);
f = imread(filename);

max = -inf;
for i=1:nRegions
    subImage = imcrop(f,boundingbox(i).BoundingBox);
    tmp = U(subImage);
    if length(tmp) > max
        max = length(tmp);
    end
end

Ur = zeros(nRegions,max);

for i=1:nRegions
    subImage = imcrop(f,boundingbox(i).BoundingBox);
    tmp = U(subImage);
    Ur(i,1:length(tmp)) = tmp;
end

end