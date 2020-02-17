function f = pecstrum(U)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
f = zeros(size(U, 1), size(U, 2));
A = [0; 0; 0; 0];
U = [U A];
for i = 1:size(f, 2)
    f(:, i) = (U(:, i) - U(:, i+1)) ./ U(:, 1);
end
end

