U1 = sizeDistribution('solidShadow1.gif');
U2 = sizeDistribution('solidShadow1Rotated.gif');

f1 = pecstrum(U1);
f2 = pecstrum(U2);

H1 = complexity(f1);
H2 = complexity(f2);

f1 = [f1 zeros(4,1)];

C = [1; 50; 50; 50; 5000; 1; 1; 1; 1; 1; 1; 1];

d = zeros(4, 4);

for i=1:4    
    F = kron(f1(i,:),[1;1;1;1]); % copy 4 rows of f1(i,:)
    d(:,i) = (F-f2).^2 * C;    
end
