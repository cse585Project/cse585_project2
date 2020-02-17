function f = pecstrum(U)
%pecstrum this function calculate the Pattern Spectrum (Pecstrum) of 
%each sub-image 
%   input U is a 4x11 matrix which represents the size distribution of
%   each sub-image
%   output f is a 4x11 matrix which represents the Pecstrum of each 
%   sub-image

% initialize a 4x11 matrix for return 
f = zeros(size(U, 1), size(U, 2));
A = [0; 0; 0; 0];
% append a zero column at the end of the U matrix, now its size is 4x12
U = [U A];
for i = 1:size(f, 2)
    f(:, i) = (U(:, i) - U(:, i+1)) ./ U(:, 1);
end
end

