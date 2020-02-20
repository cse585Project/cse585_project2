function ske = thinning(X,Bf,Bb)
%homo_ske This function is for homotopic skeletonization
%   X is the input image, Bf and Bb are 2 structuring elements
%   output is the homotopic skeletonization

% hit or miss
hom = erosion(X,Bf) & erosion(~X,Bb);

ske = X &(~hom);
end

