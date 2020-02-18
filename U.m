function area = U(img)
%X=img;
%imshow(X);
r=maxN(img);

for i=0:r
    nB = ones(2*i+1, 2*i+1);
    tmp = opening(img, nB);
    area(i+1) = sum(tmp(:));
    % subplot(2,7,i+1);imshow(tmp,[]),title('XrB');
    
end


return

%imshow(Y);



