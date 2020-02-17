function N = maxN(X)
% X m*n sub image
% N max n such that X <Minkowski Subtraction> kB ~= empty
% B=ones(3,3)

S = X;
n = 0;
while any(S(:)) % exists 1
    n = n+1;
    nB = ones(2*n+1,2*n+1);
    S = erosion(X,nB);
end
N = n-1;


end