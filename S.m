function N = S(X)
% X m*n sub image
% N max n such that X <Minkowski Subtraction> kB ~= empty
% B=ones(3,3)

B = ones(3,3);
XB = opening(X,B);
S = X & ~XB;
n = 0;
while any(S(:)) % exists 1
    n = n+1;
    nB = ones(2*n+1,2*n+1);
    sub = erosion(X,nB);
    open = opening(sub,B);
    S = sub & ~open;
end
N = n-1;


end