U1 = sizeDistribution('match1.gif');
U2 = sizeDistribution('match3.gif');

f1 = pecstrum(U1);
f2 = pecstrum(U2);

H1 = complexity(f1);
H2 = complexity(f2);

f1 = [f1 zeros(4,1)];

C = [1; 1; 50; 50; 100; 150; 1; 1; 1; 1; 1; 1; 1];

d = zeros(4, 4);

for i=1:4    
    F = kron(f1(i,:),[1;1;1;1]); % copy 4 rows of f1(i,:)
    d(:,i) = (F-f2).^2 * C;    
end

for i=1:4
    index1 = i;
    [~,index3] = min(d(:,i));
    [left, right] = pairMatch13(index1, index3);
    result = sprintf('%s from match1.gif matches %s from match3.gif with distance %1.4f' ...
                    ,left, right, d(index3,i));  
    disp(result);
end