f = imread("shadow1.gif");
% f2 = imread("shadow1rotated.gif");

f(1:76,:) = zeros(76,size(f,2));
imshow(f, []);
