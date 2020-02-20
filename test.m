f = imread('match1.gif');
[B,n] = cutShape('match1.gif');
sub = imcrop(f,B(1).BoundingBox);

A = opening(sub,ones(21,21));
imshow(A,[])