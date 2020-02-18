function H = complexity(f)
% f a matrix of pecstrum
num = size(f,1);
H = zeros(num,1);
for i=1:num
    j=1;
    while j <= size(f,2) && f(i,j) ~= 0
        H(i) = H(i) - f(i,j)*log2(f(i,j));
        j = j+1;
    end
    
end

end