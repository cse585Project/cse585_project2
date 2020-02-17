function area = U(img)
%X=img;
%imshow(X);
%opening = dilation(erosion(X,B),B);
r=maxN(img);
[a,b]=size(img);

Y=zeros(a,b,r);
Y(:,:,1)= img;

%compute XrB
for i=1:r-1
   nB = ones(2*i+1,2*i+1);
   Y(:,:,i+1)=opening(Y(:,:,i),nB);  
end

for i=1:r
   area(i)=sum(sum(Y(:,:,i)));
end
imshow(Y(:,:,r)),title('XrB');
%area=sum(sum(Y(:,:,r)));
r
%area(r)
%[q,w]=size(Y(:,:,r));
%counter=sum(sum(Y(:,:,r) == 0));
%total=q*w;
return


%imshow(Y);

%B = ones(3,3);
%opening = dilation(erosion(X,B),B);
%closing = erosion(dilation(opening,B),B);

%输入图片 返回vector 和标量（最大的n）


