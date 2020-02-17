function ske = homo_ske(X,Bf,Bb)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
hom = erosion(X,Bf) & erosion(~X,Bb);
ske = X &(~hom);
end

