function area = U(img)
%X=img;
%imshow(X);
%opening = dilation(erosion(X,B),B);
r=maxN(img);
[a,b]=size(img);

Y=zeros(a,b,r);
Y(:,:,1)= img;

%compute XrB
for i=1:r
   nB = ones(2*i+1,2*i+1);
   Y(:,:,i)=opening(img,nB);  
end

for i=1:r
   area(i)=sum(sum(Y(:,:,i)));
   subplot(2,6,i);imshow(Y(:,:,i)),title('XrB');
end

return

%imshow(Y);



